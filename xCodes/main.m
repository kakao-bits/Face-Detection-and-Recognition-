function varargout = main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 16-Jul-2021 13:30:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% standard size of image is 300 *300
global co
clc
warning off
st = version;
if str2double(st(1)) < 8 
    beep
    hx  = msgbox('PLEASE RUN IT ON MATLAB 2013 or Higher','INFO...!!!','warn','modal');
    pause(3)
    delete(hx)
    close(gcf)
    return
end
co = get(hObject,'color');
addpath(pwd,'database','codes')
if size(ls('database'),2) == 2
    delete('features.mat');
    delete('info.mat');
end
% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%p  = get(handles.edit1,'UserData');
%if strcmp(p,'123') == 1
   % delete(hObject);
   % delete(handles.pushbutton2)
    %delete(handles.edit1);
   % delete(handles.text2);
   % delete(handles.text3);
   % delete(handles.text1);
  %  delete(handles.text4);
%     msgbox('WHY DONT U READ HELP BEFORE STARTING','HELP....!!!','help','modal')
%     set(handles.AD_NW_IMAGE,'enable','on')
%     set(handles.DE_LETE,'enable','on')
%     set(handles.Start_Training,'enable','on')
%     set(handles.STA_RT,'enable','on')
%     set(handles.RESET_ALL,'enable','on')
%     set(handles.EXI_T,'enable','on')
%     set(handles.HE_LP,'enable','on')
%     set(handles.DATA_BASE,'enable','on')
%     set(handles.text5,'visible','on')
%else
   % msgbox('INVALID PASSWORD FRIEND... XX','WARNING....!!!','warn','modal')
%end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf

% --------------------------------------------------------------------
function AD_NW_IMAGE_Callback(hObject, eventdata, handles)
% hObject    handle to AD_NW_IMAGE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function DE_LETE_Callback(hObject, eventdata, handles)
% hObject    handle to DE_LETE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function TRAIN_ING_Callback(hObject, eventdata, handles)
% hObject    handle to Start_Training (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function STA_RT_Callback(hObject, eventdata, handles)
% hObject    handle to STA_RT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function DATA_BASE_Callback(hObject, eventdata, handles)
% hObject    handle to DATA_BASE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function RESET_ALL_Callback(hObject, eventdata, handles)
% hObject    handle to RESET_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function EXI_T_Callback(hObject, eventdata, handles)
% hObject    handle to EXI_T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

2
% --------------------------------------------------------------------
function HE_LP_Callback(hObject, eventdata, handles)
% hObject    handle to HE_LP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function READ_ME_Callback(hObject, eventdata, handles)
% hObject    handle to READ_ME (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('help.pdf')

% --------------------------------------------------------------------
function PRE_CAP_Callback(hObject, eventdata, handles)
% hObject    handle to PRE_CAP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global net in
if exist('features.mat','file') == 0
    msgbox('FIRST TRAIN YOUR DATABASE','INFO...!!!','MODAL')
    return
end
ff = dir('database');
result = net(in);
if length(ff) == 2
    h = waitbar(0,'Plz wait Matlab is scanning ur database...','name','SCANNING IS IN PROGRESS');
    for k = 1:100
        waitbar(k/100)
        pause(0.03)
    end
    close(h)
    msgbox({'NO IMAGE FOUND IN DATABASE';'FIRST LOAD YOUR DATABASE';'USE ''ADD NEW IMAGE'' MENU'},'WARNING....!!!','WARN','MODAL')
    return
end
fd = vision.CascadeObjectDetector();
[f,p] = uigetfile('*.jpg','PLEASE SELECT AN FACIAL IMAGE');
if f == 0
    return
end
p1 = fullfile(p,f);
im = imread(p1);
bbox = step(fd, im);
vo = insertObjectAnnotation(im,'rectangle',bbox,'FACE');
r = size(bbox,1);
if isempty(bbox)
    axes(handles.axes1)
    imshow(vo);
    msgbox({'NO FACE IN THIS PIC';'PLEASE SELECT SINGLE FACE IMAGE'},'WARNING...!!!','warn','modal')
    uiwait
    cla(handles.axes1); reset(handles.axes1); set(handles.axes1,'box','on','xtick',[],'ytick',[])
    return
elseif r > 1
    axes(handles.axes1)
    imshow(vo);
    msgbox({'TOO MANY FACES IN THIS PIC';'PLEASE SELECT SINGLE FACE IMAGE'},'WARNING...!!!','warn','modal')
    uiwait
    cla(handles.axes1); reset(handles.axes1); set(handles.axes1,'box','on','xtick',[],'ytick',[])
    return
end
axes(handles.axes1)
image(vo);
set(handles.axes1,'xtick',[],'ytick',[],'box','on')
bx = questdlg({'CORRECT IMAGE IS SELECTED';'SELECT OPTION FOR FACE EXTRACTION'},'SELECT AN OPTION','MANUALLY','AUTO','CC');
if strcmp(bx,'MANUALLY') == 1
    while 1
        fhx = figure(2);
        set(fhx,'menubar','none','numbertitle','off','name','PREVIEW')
        imc = imcrop(im);
        bbox1 = step(fd, imc);
        if size(bbox1,1) ~= 1
            msgbox({'YOU HAVENT CROPED A FACE';'CROP AGAIN'},'BAD ACTION','warn','modal')
            uiwait
        else
            close gcf
            break
        end
        close gcf
    end
 imc = imresize(imc,[300  300]);
 image(imc)
 text(20,20,'\bfUr Precaptured image.','fontsize',12,'color','y','fontname','comic sans ms')
 set(handles.axes1,'xtick',[],'ytick',[],'box','on')
end
 if strcmp(bx,'AUTO') == 1
    imc = imcrop(im,[bbox(1)-50  bbox(2)-250   bbox(3)+100    bbox(4)+400]);
    fhx = figure(2);
    set(fhx,'menubar','none','numbertitle','off','name','PREVIEW')
    imshow(imc)
    qx = questdlg({'ARE YOU SATISFIED WITH THE RESULTS?';' ';'IF YES THEN PROCEED';' ';'IF NOT BETTER DO MANUAL CROPING'},'SELECT','PROCEED','MANUAL','CC');
    if strcmpi(qx,'proceed') == 1
        close gcf
        imc = imresize(imc,[300  300]);
        axes(handles.axes1)
        image(imc)
        text(20,20,'\bfUr Precaptured image.','fontsize',12,'color','y','fontname','comic sans ms')
        set(handles.axes1,'xtick',[],'ytick',[],'box','on')
    elseif strcmpi(qx,'manual') == 1
        while 1
            fhx = figure(2);
            set(fhx,'menubar','none','numbertitle','off','name','PREVIEW')
            imc = imcrop(im);
            bbox1 = step(fd, imc);
            if size(bbox1,1) ~= 1
                msgbox({'YOU HAVENT CROPED A FACE';'CROP AGAIN'},'BAD ACTION','warn','modal')
                uiwait
            else
                break
            end
            close gcf
        end
    close gcf
    imc = imresize(imc,[300 300]);
    axes(handles.axes1)
    image(imc)
    text(20,20,'\bfUr Precaptured image.','fontsize',12,'color','y','fontname','comic sans ms')
    set(handles.axes1,'xtick',[],'ytick',[],'box','on')
    else
    end
 end
 immxx = getimage(handles.axes1);
 zz = findsimilar(immxx);
 zz = strtrim(zz);
fxz = imread(['database/'  zz]);
q1= ehd(immxx,0.1);
q2 = ehd(fxz,0.1);
q3 = pdist([q1 ; q2]);
disp(q3)
if q3 < 0.5
    axes(handles.axes2)
    image(fxz)
    set(handles.axes1,'xtick',[],'ytick',[],'box','on')
    text(20,20,'\bfUr Database Entered Image.','fontsize',12,'color','y','fontname','comic sans ms')
    set(handles.axes2,'xtick',[],'ytick',[],'box','on')
    xs = load('info.mat');
    xs1 = xs.z2;
    for k = 1:length(xs1)
        st = xs1{k};
        stx = st{1};
        if strcmp(stx,zz) == 1
            str = st{2};
            break
        end
    end
    fid = fopen('attendence_sheet.txt','a');
    fprintf(fid,'%s              %s                %s                %s\r\n\n', 'Name','Date','Time', 'Attendence');
    c = clock;
    if c(4) > 12
        s = [num2str(c(4)-12) ,':',num2str(c(5)), ':', num2str(round(c(6))) ];
    else
        s = [num2str(c(4)) ,':',num2str(c(5)), ':', num2str(round(c(6))) ];
    end
    fprintf(fid,'%s          %s          %s                  %s\r\n\n', str, date,s,'Present');
    fclose(fid);
    set(handles.text5,'string',['Hello ' str ' ,You has been approved.'])
 
else
    msgbox('YOU ARE NOT A VALID PERSON', 'WARNING','WARN','MODAL')
    cla(handles.axes1)
    reset(handles.axes1)
    cla(handles.axes2)
    reset(handles.axes2)
    set(handles.axes1,'box','on','xcolor','w','ycolor','w','xtick',[],'ytick',[],'color',[0.0431  0.5176  0.7804],'linewidth',1.5);
    set(handles.axes2,'box','on','xcolor','w','ycolor','w','xtick',[],'ytick',[],'color',[0.0431  0.5176  0.7804],'linewidth',1.5)
end
    

% --------------------------------------------------------------------

% --------------------------------------------------------------------
function SINGL_PIC_Callback(hObject, eventdata, handles)
% hObject    handle to SINGL_PIC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
flist  =  dir('database');
if length(flist) == 2
    msgbox('NOTHING TO DELETE','INFO','modal');
    return
end
cd('database')
[f,p] = uigetfile('*.jpg','SELECT A PIC TO DELETE IT');
if f == 0
    cd ..
    return
end
p1 = fullfile(p,f);
delete(p1)
flist  =  dir(pwd);
if length(flist) == 2
    cd ..
    return
end
for k =  3:length(flist)
    z = flist(k).name;
    z(strfind(z,'.') : end) = [];
    nlist(k-2) = str2double(z);
end
nlist  = sort(nlist);
h = waitbar(0,'PLZ WAIT, WHILE MATLAB IS RENAMING','name','PROGRESS...');
for k = 1:length(nlist)
    if k ~= nlist(k)
        p = nlist(k);
        movefile([num2str(p)  '.jpg']  ,  [num2str(k)  '.jpg'])
        waitbar((k-2)/length(flist),h,sprintf('RENAMED  %s   to  %s',[num2str(p)  '.jpg'],[num2str(k)  '.jpg']))
    end
    pause(.5)
end
close(h)
cd ..


% --------------------------------------------------------------------
function MULTI_PIC_Callback(hObject, eventdata, handles)
% hObject    handle to MULTI_PIC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
flist  =  dir('database');
if length(flist) == 2
    msgbox('NOTHING TO DELETE','INFO','modal');
    return
end
for k =  3:length(flist)
    na1(k-2,1) = {flist(k).name};
end
[a,b] = listdlg('promptstring','SELECT FILE/FILES TO DELETE','liststring',na1,'listsize',[125  100]);
if b == 0
    return
end
cd ('database')
for k = 1:length(a)
    str = na1{k};
    delete(str)
end
cd ..
flist  =  dir('database');
if length(flist) == 2
    msgbox({'NOTHING TO RENAME';'ALL DELETED'},'INFO','modal');
    return
end
cd('database')
flist  =  dir(pwd);
for k =  3:length(flist)
    z = flist(k).name;
    z(strfind(z,'.') : end) = [];
    nlist(k-2) = str2double(z);
end
nlist  = sort(nlist);
h = waitbar(0,'PLZ WAIT, WHILE MATLAB IS RENAMING','name','PROGRESS...');
for k = 1:length(nlist)
    if k ~= nlist(k)
        p = nlist(k);
        movefile([num2str(p)  '.jpg']  ,  [num2str(k)  '.jpg'])
        waitbar((k-2)/length(flist),h,sprintf('RENAMED  %s   to  %s',[num2str(p)  '.jpg'],[num2str(k)  '.jpg']))
    end
    pause(.5)
end
close(h)
cd ..


% --------------------------------------------------------------------
function BR_OWSE_Callback(hObject, eventdata, handles)
% hObject    handle to BR_OWSE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im
[f,p] = uigetfile('*.jpg','PLEASE SELECT AN FACIAL IMAGE');
if f == 0
    return
end
iMfilename = fullfile(p,f);
im = imread(iMfilename);
faceDetector = vision.CascadeObjectDetector;
bboxes = step(faceDetector, im);
IFaces = insertObjectAnnotation(im, 'rectangle', bboxes, 'Face','LineWidth',3,'Color','red','TextBoxOpacity',1,'FontSize',20);
%  axes(handles.axes1);
%  imshow(IFaces);

[img,face] = cropface(im);
I = imadjust(img,stretchlim(img));
I = rgb2gray(I);

I = imresize(I,[112 92]);
%I = ordfilt2(I,5,ones(3,3)); % Median Filter
I2 = ordfilt2(I,1,true(3));

axes(handles.axes1);
imshow(IFaces);title(' original image ');
axes(handles.axes3);
imshow(I2);title('Adjustmented');
axes(handles.axes4);
imshow(I);title('Filtered');

if face==1
%     mkdir(['Test\' strF]);
    %imwrite(img,['croppedfaces\', str,'\',int2str(j), '.jpg']);
    %imwrite(I,['croppedfaces\', str,'\',int2str(j), '_B.jpg']);
    
    testFileName = [iMfilename(1:end-4), '_Test.bmp'];
    imwrite(I2,testFileName);
end


% --------------------------------------------------------------------
function FRM_CAM_Callback(hObject, eventdata, handles)
% hObject    handle to FRM_CAM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global co
if isfield(handles,'vdx')
    vid = handles.vdx;
    stoppreview(vid)
    delete(vid)
    handles = rmfield(handles,'vdx');
    guidata(hObject,handles)
    cla(handles.axes1)
    reset(handles.axes1)
    set(handles.axes1,'box','on','xcolor','w','ycolor','w','xtick',[],'ytick',[],'color',[0.0431  0.5176  0.7804],'linewidth',1.5)
    cla(handles.axes2)
    reset(handles.axes2)
    set(handles.axes2,'box','on','xcolor','w','ycolor','w','xtick',[],'ytick',[],'color',[0.0431  0.5176  0.7804],'linewidth',1.5)
end
fd = vision.CascadeObjectDetector();
info = imaqhwinfo('winvide');
did = info.DeviceIDs;
if isempty(did)
    msgbox({'YOUR SYSTEM DO NOT HAVE A WEBCAM';' ';'CONNECT A ONE'},'WARNING....!!!!','warn','modal')
    return
end
did = cell2mat(did);
for k = 1:length(did)
    devinfo = imaqhwinfo('winvideo',k);
    na(1,k) = {devinfo.DeviceName};
    sr(1,k) = {devinfo.SupportedFormats};
end
[a,b] = listdlg('promptstring','SELECT A WEB CAM DEVICE','liststring',na,'ListSize', [125, 75],'SelectionMode','single');
if b == 0
    return
end
if b ~= 0
    frmt = sr{1,a};
    [a1,b1] = listdlg('promptstring','SELECT RESOLUTION','liststring',frmt,'ListSize', [150, 100],'SelectionMode','single');
    if b1 == 0
        return
    end
end
frmt = frmt{a1};
l = find(frmt == '_');
res = frmt(l+1 : end);
l = find(res == 'x');
res1 = str2double(res(1: l-1));
res2 = str2double(res(l+1 : end));
axes(handles.axes1)
vid = videoinput('winvideo', a);
vr  =  [res1    res2];
nbands  =  get(vid,'NumberofBands');
h2im  = image(zeros([vr(2)  vr(1)  nbands] , 'uint8'));
preview(vid,h2im);
handles.vdx = vid;
guidata(hObject,handles)
tx = msgbox('PLZ STAND IN FRONT OF CAMERA STILL','INFO......!!!');
pause(1)
delete(tx)
kx  =  0;
while 1
    im = getframe(handles.axes1);
    im =  im.cdata;
    bbox = step(fd, im);
    vo = insertObjectAnnotation(im,'rectangle',bbox,'FACE');
    axes(handles.axes2)
    imshow(vo)
    if size(bbox,1) > 1
        msgbox({'TOO MANY FACES IN FRAME';' ';'ONLY ONE FACE IS ACCEPTED'},'WARNING.....!!!','warn','modal')
        uiwait
        stoppreview(vid)
        delete(vid)
        handles = rmfield(handles,'vdx');
        guidata(hObject,handles)
        cla(handles.axes1)
        reset(handles.axes1)
        set(handles.axes1,'box','on','xtick',[],'ytick',[],'xcolor',[1 1 1],'ycolor',[1 1  1],'color',co,'linewidth',1.5)
        cla(handles.axes2)
        reset(handles.axes2)
        set(handles.axes2,'box','on','xtick',[],'ytick',[],'xcolor',[1 1 1],'ycolor',[1 1  1],'color',co,'linewidth',1.5)
        return
    end
    kx = kx + 1;
    if kx > 10 && ~isempty(bbox)
        break
    end
end
imc = imcrop(im,[bbox(1)+3    bbox(2)-35    bbox(3)-10      bbox(4)+70]);
imx  =   imresize(imc,[300  300]);
fhx = figure(2);
set(fhx,'menubar','none','numbertitle','off','name','PREVIEW')
imshow(imx)
cd ('database');
l = length(dir(pwd));
n = [int2str(l-1)    '.jpg'];
imwrite(imx,n);
cd ..
    while 1
        qq = inputdlg('WHAT IS UR NAME?','FILL');
        if isempty(qq)
            msgbox({'YOU HAVE TO ENTER A NAME';' ';'YOU CANT CLICK CANCEL'},'INFO','HELP','MODAL')
            uiwait
        else
            break
        end
    end
    qq = qq{1};
    if exist('info.mat','file') == 2
        load ('info.mat')
        r = size(z2,1);
        z2{r+1,1} = {n , qq};
        save('info.mat','z2')
    else
        z2{1,1} = {n,qq};
        save('info.mat','z2')
    end
close gcf
stoppreview(vid)
delete(vid)
handles = rmfield(handles,'vdx');
guidata(hObject,handles)
cla(handles.axes1)
reset(handles.axes1)
set(handles.axes1,'box','on','xtick',[],'ytick',[],'xcolor',[1 1 1],'ycolor',[1 1  1],'color',co,'linewidth',1.5)
cla(handles.axes2)
reset(handles.axes2)
set(handles.axes2,'box','on','xtick',[],'ytick',[],'xcolor',[1 1 1],'ycolor',[1 1  1],'color',co,'linewidth',1.5)


% --- Executes on key press with focus on edit1 and none of its controls.
function edit1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
pass = get(handles.edit1,'UserData');
v = double(get(handles.figure1,'CurrentCharacter'));
if v == 8
    pass = pass(1:end-1);
    set(handles.edit1,'string',pass)
elseif any(v == 65:90) || any(v  == 97:122) || any(v == 48:57)
    pass = [pass  char(v)];
elseif v == 13
    p  = get(handles.edit1,'UserData');
    if strcmp(p,'123') == true
        delete(hObject);
        delete(handles.pushbutton2)
        delete(handles.pushbutton1);
        delete(handles.text2);
        delete(handles.text3);
        delete(handles.text1);
        delete(handles.text4);
        msgbox('WHY DONT U READ HELP BEFORE STARTING','HELP....!!!','help','modal')
        set(handles.AD_NW_IMAGE,'enable','on')
        set(handles.DE_LETE,'enable','on')
        set(handles.Start_Training,'enable','on')
        set(handles.STA_RT,'enable','on')
        set(handles.RESET_ALL,'enable','on')
        set(handles.EXI_T,'enable','on')
        set(handles.HE_LP,'enable','on')
        set(handles.DATA_BASE,'enable','on')
        set(handles.text5,'visible','on')
        return
    else
        beep
        msgbox('INVALID PASSWORD FRIEND... XX','WARNING....!!!','warn','modal')
        uiwait;
        set(handles.edit1,'string','')
        return
    end
else
    msgbox({'Invalid Password Character';'Can''t use Special Character'},'warn','modal')
    uiwait;
    set(handles.edit1,'string','')
    return
end
set(handles.edit1,'UserData',pass)
set(handles.edit1,'String',char('*'*sign(pass)))


% --------------------------------------------------------------------
function VI_EW_Callback(hObject, eventdata, handles)
% hObject    handle to VI_EW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

f = dir('database');
if length(f) == 2
    msgbox('YOUR DATA BASE HAS NO IMAGE TO DISPLAY','SORRY','modal')
    return
end
l = length(f)-2;
while 1
    a = factor(l);
    if length(a) >= 4
        break
    end
    l = l+1;
end
d  = a(1: ceil(length(a)/2));
d = prod(d);
d1 = a(ceil(length(a)/2)+1  : end);
d1 = prod(d1);
zx = sort([d d1]);
figure('menubar','none','numbertitle','off','name','Images of Database','color',[0.0431  0.5176  0.7804],'position',[300 200 600 500])
for k = 3:length(f)
    im = imread(f(k).name);
    subplot(zx(1),zx(2),k-2)
    imshow(im)
    title(f(k).name,'fontsize',10,'color','w')
end



% --------------------------------------------------------------------
function Start_Training_Callback(hObject, eventdata, handles)
% hObject    handle to Start_Training (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nPerson=12;
nFacesPerPerson = 1;

[imgRow,imgCol,FaceContainer,faceLabel]=ReadFaces(nFacesPerPerson,nPerson);
nFaces=size(FaceContainer,1);
load Mat\imdata; 

k=nPerson;   %The first k eigenvalues and eigenvectors
[pcaFaces, W] = fastPCA(FaceContainer, k,imdata,nPerson,nFacesPerPerson); 

visualize_pc(W,nPerson);

X = pcaFaces;
% 
[X,A0,B0] = scaling(X);
save('Mat/scaling.mat', 'A0', 'B0');

TrainData = X;
trainLabel = faceLabel;   
save('Mat/trainData.mat', 'TrainData', 'trainLabel');

trainDatabase(k);

% ff = dir('database');
% if length(ff) == 2
%     h = waitbar(0,'Plz wait Matlab is scanning ur database...','name','SCANNING IS IN PROGRESS');
%     for k = 1:100
%         waitbar(k/100)
%         pause(0.03)
%     end
%     close(h)
%     msgbox({'NO IMAGE FOUND IN DATABASE';'FIRST LOAD YOUR DATABASE';'USE ''ADD NEW IMAGE'' MENU'},'WARNING....!!!','WARN','MODAL')
%     return
% end
% if exist('features.mat','file') == 2
%     bx = questdlg({'TRAINING HAS ALREDY BEEN DONE';' ';'WANT TO TRAIN DATABASE AGAIN?'},'SELECT','YES','NO','CC');
%     if strcmpi(bx,'yes') == 1
%         builddatabase
%         msgbox('TRAINING DONE....PRESS OK TO CONTINUE','OK','modal')
%         return
%     else
%         return
%     end
% else
%     builddatabase
%     msgbox('TRAINING DONE....PRESS OK TO CONTINUE','OK','modal')
%     return
% end


% --------------------------------------------------------------------
function BYE_Callback(hObject, eventdata, handles)
% hObject    handle to BYE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%end%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --------------------------------------------------------------------
function ATTENDENCE_Callback(hObject, eventdata, handles)
% hObject    handle to ATTENDENCE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if  exist('attendence_sheet.txt','file') == 2
    winopen('attendence_sheet.txt')
else
    msgbox('NO ATTENDENCE SHEET TO DISPLAY','INFO...!!!','HELP','MODAL')
end

% --------------------------------------------------------------------
function DEL_ATTENDENCE_Callback(hObject, eventdata, handles)
% hObject    handle to DEL_ATTENDENCE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if  exist('attendence_sheet.txt','file') == 2
   delete('attendence_sheet.txt')
   msgbox('ATTENDENCE DELETED','INFO...!!!','MODAL')
else
    msgbox('NO ATTENDENCE SHEET TO DELETE','INFO...!!!','HELP','MODAL')
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x  = questdlg({'Resetting will Clear the followings: ';'1. Attendence_sheet';'2. Database';'3. features.mat';'4. Info.mat';'Do u want to continue?'},'Please select...!!');
if strcmpi(x,'yes') == 1
    delete('attendence_sheet.txt')
    delete('features.mat')
    delete('info.mat')
    cd ([pwd, '\database'])
    f = dir(pwd);
    for k = 1:length(f)
        delete(f(k).name)
    end
    cd .. 
    cla(handles.axes1);
    reset(handles.axes1);
    set(handles.axes1,'box','on','xcolor','w','ycolor','w','xtick',[],'ytick',[],'color',[0.0431  0.5176  0.7804],'linewidth',1.5)
    cla(handles.axes2);
    reset(handles.axes2);
    set(handles.axes2,'box','on','xcolor','w','ycolor','w','xtick',[],'ytick',[],'color',[0.0431  0.5176  0.7804],'linewidth',1.5)
    set(handles.text5,'string','')
    beep
    msgbox('All Reset','Info','modal')
end


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1);
reset(handles.axes1);
set(handles.axes1,'box','on','xcolor','w','ycolor','w','xtick',[],'ytick',[],'color',[0.0431  0.5176  0.7804],'linewidth',1.5)
cla(handles.axes2);
reset(handles.axes2);
set(handles.axes2,'box','on','xcolor','w','ycolor','w','xtick',[],'ytick',[],'color',[0.0431  0.5176  0.7804],'linewidth',1.5)
set(handles.text5,'string','')


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function text5_Callback(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text5 as text
%        str2double(get(hObject,'String')) returns contents of text5 as a double


% --- Executes during object creation, after setting all properties.
function text5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im  I4
I4 = imadjust(im,stretchlim(im));
I5 = imresize(I4,[300,400]);
axes(handles.axes3);
imshow(I5);title(' enhancement image ');
handles.ImgData2 = I4;
guidata(hObject,handles);



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im  I4
I6 = I4;
I = I6;
%% Extract Features


cform = makecform('srgb2lab');
lab_he = applycform(I,cform);

% Classify the colors in a*b* colorspace using K means clustering.
% Since the image has 3 colors create 3 clusters.
% Measure the distance using Euclidean Distance Metric.
ab = double(lab_he(:,:,2:3));
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);
nColors = 3;
[cluster_idx cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                      'Replicates',3);
%[cluster_idx cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',3);
% Label every pixel in tha image using results from K means
pixel_labels = reshape(cluster_idx,nrows,ncols);
%figure,imshow(pixel_labels,[]), title('Image Labeled by Cluster Index');

% Create a blank cell array to store the results of clustering
segmented_images = cell(1,3);
% Create RGB label using pixel_labels
rgb_label = repmat(pixel_labels,[1,1,3]);

for k = 1:nColors
    colors = I;
    colors(rgb_label ~= k) = 0;
    segmented_images{k} = colors;
end



%figure,subplot(2,3,2);imshow(I);title('Original Image'); subplot(2,3,4);imshow(segmented_images{1});title('Cluster 1'); subplot(2,3,5);imshow(segmented_images{2});title('Cluster 2');
%subplot(2,3,6);imshow(segmented_images{3});title('Cluster 3');
%set(gcf, 'Position', get(0,'Screensize'));
%set(gcf, 'name','Segmented by K Means', 'numbertitle','off')
% Feature Extraction
%pause(2)
%x = inputdlg('Enter the cluster no. containing the ROI only:');
%i = str2double(x);
% Extract the features from the segmented image
seg_img = segmented_images{1};

% Convert to grayscale if image is RGB
if ndims(seg_img) == 3
   img = rgb2gray(seg_img);
end
%figure, imshow(img); title('Gray Scale Image');

% Evaluate the disease affected area
black = im2bw(seg_img,graythresh(seg_img));
%figure, imshow(black);title('Black & White Image');
m = size(seg_img,1);
n = size(seg_img,2);

zero_image = zeros(m,n); 
%G = imoverlay(zero_image,seg_img,[1 0 0]);

% Create the Gray Level Cooccurance Matrices (GLCMs)
glcms = graycomatrix(img);

% Derive Statistics from GLCM
stats = graycoprops(glcms,'Contrast Correlation Energy Homogeneity');
Contrast = stats.Contrast;
Correlation = stats.Correlation;
Energy = stats.Energy;
Homogeneity = stats.Homogeneity;
Mean = mean2(seg_img);
Standard_Deviation = std2(seg_img);
Entropy = entropy(seg_img);
RMS = mean2(rms(seg_img));
%Skewness = skewness(img)
Variance = mean2(var(double(seg_img)));
a = sum(double(seg_img(:)));
Smoothness = 1-(1/(1+a));
Kurtosis = kurtosis(double(seg_img(:)));
Skewness = skewness(double(seg_img(:)));
% Inverse Difference Movement
m = size(seg_img,1);
n = size(seg_img,2);
in_diff = 0;
for i = 1:m
    for j = 1:n
        temp = seg_img(i,j)./(1+(i-j).^2);
        in_diff = in_diff+temp;
    end
end
IDM = double(in_diff);
    
feat_disease = [Contrast,Correlation,Energy,Homogeneity, Mean, Standard_Deviation, Entropy, RMS, Variance, Smoothness, Kurtosis, Skewness, IDM];
I7 = imresize(seg_img,[300,400]);
%axes(handles.axes3);
%imshow(I7);title('Segmented ROI');
%set(handles.edit3,'string',Affect);
set(handles.edit3,'string',Mean);
set(handles.edit4,'string',Standard_Deviation);
set(handles.edit5,'string',Entropy);
set(handles.edit6,'string',RMS);
set(handles.edit7,'string',Variance);
set(handles.edit8,'string',Smoothness);
set(handles.edit9,'string',Kurtosis);
set(handles.edit10,'string',Skewness);
set(handles.edit11,'string',IDM);
set(handles.edit12,'string',Contrast);
set(handles.edit13,'string',Correlation);
set(handles.edit14,'string',Energy);
set(handles.edit15,'string',Homogeneity);

% Update GUI
guidata(hObject,handles);


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
global no_of_neur
no_of_neur1=get(handles.popupmenu3,'value');
switch no_of_neur1
     case 2
         no_of_neur = 10;
         case 3
        no_of_neur = 11;
         case 4
         no_of_neur = 12;
         case 5
         no_of_neur = 13;
         case 6
        no_of_neur = 14;
         case 7
         no_of_neur = 15;
         case 8
         no_of_neur = 16;
         case 9
        no_of_neur = 17;
         case 10
         no_of_neur = 18;
         case 11
         no_of_neur = 19;
         case 12
        no_of_neur = 20;
         case 13
         no_of_neur = 21;
 end 

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global performance
global TotMatrix
global TotMatrix2
global net
ann
set(handles.edit16,'string',num2str(performance));


function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n = 12;
for i =1:n
    str = ['s0',int2str(i)];
    strF = ['s',int2str(i)]; % +40
    ds1 = imageDatastore(['photos\',str],'IncludeSubfolders',true,'LabelSource','foldernames');
    cropandsave(ds1,str,strF);
end
set(handles.edit17,'string','Prepared');


function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1,'reset');
cla(handles.axes2,'reset');
cla(handles.axes3,'reset');
