function varargout = st2_project(varargin)
% ST2_PROJECT MATLAB code for st2_project.fig
%      ST2_PROJECT, by itself, creates a new ST2_PROJECT or raises the existing
%      singleton*.
%
%      H = ST2_PROJECT returns the handle to a new ST2_PROJECT or the handle to
%      the existing singleton*.
%
%      ST2_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ST2_PROJECT.M with the given input arguments.
%
%      ST2_PROJECT('Property','Value',...) creates a new ST2_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before st2_project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to st2_project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help st2_project

% Last Modified by GUIDE v2.5 08-Apr-2016 09:49:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @st2_project_OpeningFcn, ...
                   'gui_OutputFcn',  @st2_project_OutputFcn, ...
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


% --- Executes just before st2_project is made visible.
function st2_project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to st2_project (see VARARGIN)

% Choose default command line output for st2_project
handles.output = hObject;
axes(handles.displayGraph);
upperBarX = [0 3];
upperBarY = [10 10];		
poleX = [0 0];
poleY = [0 10];
lowerBarX = [-1 1];
lowerBarY = [0 0];
plot(upperBarX,upperBarY,'w',poleX,poleY,'w',lowerBarX,lowerBarY,'w','LineWidth',4)
axis([-2 6 0 10])
axis off;
handles.noOfTries = 0;
fileID = fopen('F:\Lab Data\ST - 2\project\words.txt','r');
[word,count] = fscanf(fileID,'%c');
j = 1 ; k = 1;
for i = 1 : count
    if word(i) ~= ' '
        arr(j,k) = word(i);
        k=k+1;
    else
        j = j +1;
        k =1;
    end
end
handles.data = arr; 
set(handles.displayText,'string','Click on New Word');
% Update handles structure
guidata(hObject, handles);



% UIWAIT makes st2_project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = st2_project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in A.
function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.A,'enable','off');
branch(hObject, handles,'a');

% --- Executes on button press in B.
function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.B,'enable','off');
branch(hObject, handles,'b');

% --- Executes on button press in C.
function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.C,'enable','off');
branch(hObject, handles,'c');

% --- Executes on button press in D.
function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.D,'enable','off');
branch(hObject, handles,'d');

% --- Executes on button press in E.
function E_Callback(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.E,'enable','off');
branch(hObject, handles,'e');

% --- Executes on button press in F.
function F_Callback(hObject, eventdata, handles)
% hObject    handle to F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.F,'enable','off');
branch(hObject, handles,'f');

% --- Executes on button press in G.
function G_Callback(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.G,'enable','off');
branch(hObject, handles,'g');

% --- Executes on button press in H.
function H_Callback(hObject, eventdata, handles)
% hObject    handle to H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.H,'enable','off');
branch(hObject, handles,'h');

% --- Executes on button press in I.
function I_Callback(hObject, eventdata, handles)
% hObject    handle to I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.I,'enable','off');
branch(hObject, handles,'i');

% --- Executes on button press in J.
function J_Callback(hObject, eventdata, handles)
% hObject    handle to J (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.J,'enable','off');
branch(hObject, handles,'j');

% --- Executes on button press in K.
function K_Callback(hObject, eventdata, handles)
% hObject    handle to K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.K,'enable','off');
branch(hObject, handles,'w');

% --- Executes on button press in L.
function L_Callback(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.L,'enable','off');
branch(hObject, handles,'l');

% --- Executes on button press in M.
function M_Callback(hObject, eventdata, handles)
% hObject    handle to M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.M,'enable','off');
branch(hObject, handles,'m');

% --- Executes on button press in U.
function U_Callback(hObject, eventdata, handles)
% hObject    handle to U (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.U,'enable','off');
branch(hObject, handles,'u');

% --- Executes on button press in V.
function V_Callback(hObject, eventdata, handles)
% hObject    handle to V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.V,'enable','off');
branch(hObject, handles,'v');

% --- Executes on button press in X.
function X_Callback(hObject, eventdata, handles)
% hObject    handle to X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.X,'enable','off');
branch(hObject, handles,'x');

% --- Executes on button press in Z.
function Z_Callback(hObject, eventdata, handles)
% hObject    handle to Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Z,'enable','off');
branch(hObject, handles,'z');

% --- Executes on button press in Y.
function Y_Callback(hObject, eventdata, handles)
% hObject    handle to Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Y,'enable','off');
branch(hObject, handles,'y');

% --- Executes on button press in W.
function W_Callback(hObject, eventdata, handles)
% hObject    handle to W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.W,'enable','off');
branch(hObject, handles,'w');

% --- Executes on button press in O.
function O_Callback(hObject, eventdata, handles)
% hObject    handle to O (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.O,'enable','off');
branch(hObject, handles,'o');

% --- Executes on button press in P.
function P_Callback(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.P,'enable','off');
branch(hObject, handles,'p');

% --- Executes on button press in S.
function S_Callback(hObject, eventdata, handles)
% hObject    handle to S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.S,'enable','off');
branch(hObject,handles,'s');

% --- Executes on button press in Q.
function Q_Callback(hObject, eventdata, handles)
% hObject    handle to Q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Q,'enable','off');
branch(hObject, handles,'q');

% --- Executes on button press in T.
function T_Callback(hObject, eventdata, handles)
% hObject    handle to T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.T,'enable','off');
branch(hObject, handles,'t');

% --- Executes on button press in R.
function R_Callback(hObject, eventdata, handles)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.R,'enable','off');
branch(hObject, handles,'r');

% --- Executes on button press in N.
function N_Callback(hObject, eventdata, handles)
% hObject    handle to N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.N,'enable','off');
branch(hObject, handles,'n');

%This function checks whether the user input is correct 
%If input is correct then the appropiate letter is displayed
%If not then the hangman is drawn on the graph
function branch(hObject, handles, str)
flag = 0;
w = handles.word; %unhiddenword
s = handles.disp; %hidden word
l = handles.lenght; %lenght of the word
for i = 1 : l
    if strcmp(str,w(i)) 
        flag = flag +1;
        pos(flag) = i;
    end
end
if(flag==0)
    axes(handles.displayGraph);
       
    handles.noOfTries=handles.noOfTries+1;
    switch(handles.noOfTries)
        case 1
            th = 0:pi/50:2*pi;
            xunit =  0.707*cos(th) + 3;
            yunit =  sin(th) + 8;
            plot(xunit, yunit,'w','LineWidth',4);
        case 2
            bodyY = [3 7];
            bodyX = [3 3];
            plot(bodyX,bodyY,'w','LineWidth',4);
        case 3
            leftHandX = [2 3];
            leftHandY = [4 6];
            plot(leftHandX,leftHandY,'w','LineWidth',4);
            
        case 4
            rightHandX = [3 4];
            rightHandY = [6 4];
            plot(rightHandX,rightHandY,'w','LineWidth',4);
            
        case 5
            leftLegX = [2 3];
            leftLegY = [1 3];
            plot(leftLegX,leftLegY,'w','LineWidth',4);
            
        case 6
            rightLegX = [3 4];
            rightLegY = [3 1];
            plot(rightLegX,rightLegY,'w','LineWidth',4);
        case 7
            ropeX = [ 3 3 ];
            ropeY = [ 9 10];
            plot(ropeX,ropeY,'w','LineWidth',4);
            set(handles.displayText,'string','Game Over!!');
    end
end

     
for i = 1 : flag
    s(pos(i)) = str;
end

%Display the word(correct or incorrect)
set(handles.displayText,'string',s);

%When correct, pause 1 sec then display
if strcmp(s,w(1:l))==1 && handles.noOfTries < 7
    pause(1.0);
    set(handles.displayText,'string','You Win!!');
    score = 10 - handles.noOfTries;
    handles.noOfTries=-1;
    pause(2.0);
    if handles.timeTaken <= 20
        score = score - 1;
    end
    if handles.timeTaken <= 10
            score = score - 1;
    end
    set(handles.displayText,'string',strcat('Your Score : ',num2str(score)));
    set(handles.text1,'string',handles.timeTaken);
end
if handles.noOfTries >= 7 
    set(handles.displayText,'string','Game Over');
end
handles.disp = s ;
guidata(hObject, handles);

% --- Executes on button press in generator.
function generator_Callback(hObject, eventdata, handles)
% hObject    handle to generator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.M,'enable','on');
set(handles.N,'enable','on');
set(handles.B,'enable','on');
set(handles.V,'enable','on');
set(handles.C,'enable','on');
set(handles.X,'enable','on');
set(handles.Z,'enable','on');
set(handles.L,'enable','on');
set(handles.K,'enable','on');
set(handles.J,'enable','on');
set(handles.H,'enable','on');
set(handles.G,'enable','on');
set(handles.F,'enable','on');
set(handles.D,'enable','on');
set(handles.S,'enable','on');
set(handles.A,'enable','on');
set(handles.P,'enable','on');
set(handles.O,'enable','on');
set(handles.I,'enable','on');
set(handles.U,'enable','on');
set(handles.Y,'enable','on');
set(handles.T,'enable','on');
set(handles.R,'enable','on');
set(handles.E,'enable','on');
set(handles.W,'enable','on');
set(handles.Q,'enable','on');

guidata(hObject, handles);
handles.noOfTries = 0; %Techincally, the number of incorrect tries
l = 0;
while l < 9
e = handles.data(randi(size(handles.data,1),1,1),1:end);    %get a random word
%calculate the lenght of the word, null character problem
u = size(e,2); l = 0;
for y = 1 : u
    if e(y) ~= char(0)
        l = l + 1 ;
    end
end
end
handles.word = e;
handles.lenght = l;     %passed on as a global variable so that it does not need to be computed again.
%These lines reveal two letters randomly, from the middle of the word
n1 = floor(1 + floor(l/2-1)*rand(1));
n2 = floor(floor(l/2+1) +floor(l/2-1)*rand(1));
c1 = e(n1);
c2 = e(n2);
for i = 1 : (n1-1)
    str(i) = '-';
end
str(n1) = c1 ;
for i = n1+1 : (n2-1)
    str(i) = '-';
end
str(n2) = c2;
for i = n2+1 : l
    str(i) = '-';
end
handles.disp = str;
set(handles.displayText,'string',str);
%Replot hangman bars
axes(handles.displayGraph);
plot(1,1)
hold off;
axes(handles.displayGraph);
upperBarX = [0 3];
upperBarY = [10 10];		
poleX = [0 0];
poleY = [0 10];
lowerBarX = [-1 1];
lowerBarY = [0 0];
plot(upperBarX,upperBarY,'w',poleX,poleY,'w',lowerBarX,lowerBarY,'w','LineWidth',4)
axis([-2 6 0 10])
axis off
hold on;
t = 30;
guidata(hObject, handles);
%timer , by your's truely
while t >= 0 && handles.noOfTries < 7 && handles.noOfTries >= 0
    set(handles.text1,'string',t);
    handles = guidata(gcf);     %Updates the handles inside the loop
    pause (1.0);
    if t == 0 
        handles.noOfTries = 8;
        branch(hObject, handles, '');
    end
     t = t - 1;
end
t;
handles.timeTaken = t;
guidata(hObject, handles);
%{
% --- Executes on key press with focus on figure1 or any of its controls.
function figure1_WindowKeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
switch eventdata.Key
    case 'a'
        set(handles.A,'enable','off');
        branch(hObject,handles,'a');
    case 'b'
        set(handles.B,'enable','off');
        branch(hObject,handles,'b');
    case 'c' 
        set(handles.C,'enable','off');
        branch(hObject,handles,'c');
    case 'd' 
        set(handles.D,'enable','off');
        branch(hObject,handles,'d');
    case 'e' 
        set(handles.E,'enable','off');
        branch(hObject,handles,'e');
    case 'f' 
        set(handles.F,'enable','off');
        branch(hObject,handles,'f');
    case 'g' 
        set(handles.G,'enable','off');
        branch(hObject,handles,'g');
    case 'h' 
        set(handles.H,'enable','off');
        branch(hObject,handles,'h');
    case 'i'
        set(handles.I,'enable','off');
        branch(hObject,handles,'i');
    case 'j' 
        set(handles.J,'enable','off');
        branch(hObject,handles,'j');
    case 'w' 
        set(handles.W,'enable','off');
        branch(hObject,handles,'w');
    case 'l' 
        set(handles.L,'enable','off');
        branch(hObject,handles,'l');
    case 'm' 
        set(handles.M,'enable','off');
        branch(hObject,handles,'m');
    case 'n' 
        set(handles.N,'enable','off');
        branch(hObject,handles,'n');
    case 'o' 
        set(handles.O,'enable','off');
        branch(hObject,handles,'o');
    case 'p' 
        set(handles.P,'enable','off');
        branch(hObject,handles,'p');
    case 'q' 
        set(handles.Q,'enable','off');
        branch(hObject,handles,'q');
    case 'r' 
        set(handles.R,'enable','off');
        branch(hObject,handles,'r');
    case 's' 
        set(handles.S,'enable','off');
        branch(hObject,handles,'s');
    case 't' 
        set(handles.T,'enable','off');
        branch(hObject,handles,'t');
    case 'u' 
        set(handles.U,'enable','off');
        branch(hObject,handles,'u');
    case 'v' 
        set(handles.V,'enable','off');
        branch(hObject,handles,'v');
    case 'x' 
        set(handles.X,'enable','off');
        branch(hObject,handles,'x');
    case 'y' 
        set(handles.Y,'enable','off');
        branch(hObject,handles,'y');
    case 'z' 
        set(handles.Z,'enable','off');
        branch(hObject,handles,'z');
end
%}
