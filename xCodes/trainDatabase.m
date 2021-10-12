function trainDatabase(k)
pathname = uigetdir;
%% 创建并训练BP神经网络
%num1 num2 num3 分别是最大迭代次数';'第一隐层隐元数目';'第二隐层隐元数目';
%str1 str2 str3;'第一隐层激活函数';'第二隐层激活函数';'训练函数';
load('Mat/TrainData.mat');
% load Mat\key_reset;
key_reset = 0;
nPerson=12;
nFacesPerPerson = 1;
if key_reset==0
    num1=5000; num2=240; num3=180;
    str1='purelin'; str2='purelin'; str3='traingdx';
else
    load Mat\param;
end
%生成训练BP神经网络的输入 P 
%200*49的矩阵, 每一行代表一张主成分脸(共40人，每人5张)，每个脸49维特征（输入）
%与faceLabel的200*1相对应（输出）
P=TrainData;
%生成目标输出矢量 T
T=zeros(nPerson,nPerson);
 for i=1:nPerson
    for j=1:nFacesPerPerson
      T((i-1)*nFacesPerPerson+j,i)=1;
    end
 end
 
 
%打乱训练样本顺序
%P(200*49)   T(200*40)全零矩阵
gx2(:,1:k)=P;  %前 k 个本征值和本征向量 k=49
gx2(:,(k+1):(k+nPerson))=T;
xd=gx2(randperm(numel(gx2)/(k+nPerson)),:);   %matlab  randperm（）函数，是样本与标签对应打乱  
gx=xd(:,1:k);
d=xd(:,(k+1):(k+nPerson));
P=gx';
T=d';

%创建BP神经网络

[R,Q]=size(P);
[S2,Q]=size(T);
% net=newff(minmax(P),T,[fix(sqrt(R*S2))],{'purelin','purelin'},'traingdx');
net=newff(minmax(P),T,[num2 num3],{str1,str2},str3);
save('Mat/net', 'net');
%训练BP神经网络
net.trainparam.epochs=num1;    %训练步数
net.trainparam.goal=0.0001;    %训练目标误差
net.divideFcn = '';            %所有的样本都用于训练
[net,tr]=train(net,P,T);       %P为输入，T为输出，开始训练

%仿真BP神经网络
Y=sim(net,P);

global reference
global W
global imgmean
global col_of_data
global pathname
global img_path_list

% 批量读取指定文件夹下的图片128*128

img_path_list = dir(strcat(pathname,'\*.bmp'));
img_num = length(img_path_list);
imagedata = [];
if img_num >0
    for j = 1:img_num
        img_name = img_path_list(j).name;
        temp = imread(strcat(pathname, '/', img_name));
        temp = double(temp(:));
        imagedata = [imagedata, temp];
    end
end
col_of_data = size(imagedata,2);

% 中心化 & 计算协方差矩阵
imgmean = mean(imagedata,2);
for i = 1:col_of_data
    imagedata(:,i) = imagedata(:,i) - imgmean;
end
covMat = imagedata'*imagedata;
[COEFF, latent, explained] = pcacov(covMat);

% 选择构成95%能量的特征值
i = 1;
proportion = 0;
while(proportion < 95)
    proportion = proportion + explained(i);
    i = i+1;
end
p = i - 1;

% 特征脸
W = imagedata*COEFF;    % N*M阶
W = W(:,1:p);           % N*p阶

% 训练样本在新座标基下的表达矩阵 p*M
reference = W'*imagedata;
