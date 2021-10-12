function trainDatabase(k)
pathname = uigetdir;
%% ������ѵ��BP������
%num1 num2 num3 �ֱ�������������';'��һ������Ԫ��Ŀ';'�ڶ�������Ԫ��Ŀ';
%str1 str2 str3;'��һ���㼤���';'�ڶ����㼤���';'ѵ������';
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
%����ѵ��BP����������� P 
%200*49�ľ���, ÿһ�д���һ�����ɷ���(��40�ˣ�ÿ��5��)��ÿ����49ά���������룩
%��faceLabel��200*1���Ӧ�������
P=TrainData;
%����Ŀ�����ʸ�� T
T=zeros(nPerson,nPerson);
 for i=1:nPerson
    for j=1:nFacesPerPerson
      T((i-1)*nFacesPerPerson+j,i)=1;
    end
 end
 
 
%����ѵ������˳��
%P(200*49)   T(200*40)ȫ�����
gx2(:,1:k)=P;  %ǰ k ������ֵ�ͱ������� k=49
gx2(:,(k+1):(k+nPerson))=T;
xd=gx2(randperm(numel(gx2)/(k+nPerson)),:);   %matlab  randperm�������������������ǩ��Ӧ����  
gx=xd(:,1:k);
d=xd(:,(k+1):(k+nPerson));
P=gx';
T=d';

%����BP������

[R,Q]=size(P);
[S2,Q]=size(T);
% net=newff(minmax(P),T,[fix(sqrt(R*S2))],{'purelin','purelin'},'traingdx');
net=newff(minmax(P),T,[num2 num3],{str1,str2},str3);
save('Mat/net', 'net');
%ѵ��BP������
net.trainparam.epochs=num1;    %ѵ������
net.trainparam.goal=0.0001;    %ѵ��Ŀ�����
net.divideFcn = '';            %���е�����������ѵ��
[net,tr]=train(net,P,T);       %PΪ���룬TΪ�������ʼѵ��

%����BP������
Y=sim(net,P);

global reference
global W
global imgmean
global col_of_data
global pathname
global img_path_list

% ������ȡָ���ļ����µ�ͼƬ128*128

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

% ���Ļ� & ����Э�������
imgmean = mean(imagedata,2);
for i = 1:col_of_data
    imagedata(:,i) = imagedata(:,i) - imgmean;
end
covMat = imagedata'*imagedata;
[COEFF, latent, explained] = pcacov(covMat);

% ѡ�񹹳�95%����������ֵ
i = 1;
proportion = 0;
while(proportion < 95)
    proportion = proportion + explained(i);
    i = i+1;
end
p = i - 1;

% ������
W = imagedata*COEFF;    % N*M��
W = W(:,1:p);           % N*p��

% ѵ����������������µı����� p*M
reference = W'*imagedata;
