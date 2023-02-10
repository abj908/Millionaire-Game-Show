%Intro to Computers for Engineers: Final Project
%Section 16, Group 5
%Who Wants to Be a Millionaire? Game
%Group Members:
%-----Jake Marotta: 188004016
%-----Albert Joseph: 187003433
%-----Joshua Ratcliffe: 185002996
%-----Owen Heller: 186006160
%-----Srinu Koritela: 188003926
%-----Gagan Kattula: 190007626



function varargout = TestFinalProjectGUI(varargin)
% TESTFINALPROJECTGUI MATLAB code for TestFinalProjectGUI.fig
%      TESTFINALPROJECTGUI, by itself, creates a new TESTFINALPROJECTGUI or raises the existing
%      singleton*.
%
%      H = TESTFINALPROJECTGUI returns the handle to a new TESTFINALPROJECTGUI or the handle to
%      the existing singleton*.
%
%      TESTFINALPROJECTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTFINALPROJECTGUI.M with the given input arguments.
%
%      TESTFINALPROJECTGUI('Property','Value',...) creates a new TESTFINALPROJECTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TestFinalProjectGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TestFinalProjectGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TestFinalProjectGUI

% Last Modified by GUIDE v2.5 06-Dec-2018 15:30:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TestFinalProjectGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @TestFinalProjectGUI_OutputFcn, ...
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


% --- Executes just before TestFinalProjectGUI is made visible.
function TestFinalProjectGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TestFinalProjectGUI (see VARARGIN)

% Choose default command line output for TestFinalProjectGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TestFinalProjectGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = TestFinalProjectGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%-------------------------------------------------------------------------%



% --- Executes on button press in pushbuttonStart. 
%This will set up all the global variables to be used elsewhere in the
%program. 
function pushbuttonStart_Callback(hObject, eventdata, handles)

global answers
global wrongAnswers
global qNum
global q

%This cell array contains all the correct buttons to push.
answers = {'pushbutton1' 'pushbutton3' 'pushbutton2' 'pushbutton1' 'pushbutton3' 'pushbutton4' 'pushbutton2' 'pushbutton3' 'pushbutton3' 'pushbutton4'};

%A 10x3 cell array that has the name of the incorrect buttons. 
%Done by piecing together 1x3 cell arrays for each questions.
%Each row corresponds to the question.%
Q1inc = {'pushbutton2','pushbutton3','pushbutton4'};
Q2inc = {'pushbutton1','pushbutton2','pushbutton4'};
Q3inc = {'pushbutton1','pushbutton3','pushbutton4'};
Q4inc = {'pushbutton2','pushbutton3','pushbutton4'};
Q5inc = {'pushbutton1','pushbutton2','pushbutton4'};
Q6inc = {'pushbutton1','pushbutton2','pushbutton3'};
Q7inc = {'pushbutton1','pushbutton3','pushbutton4'};
Q8inc = {'pushbutton1','pushbutton2','pushbutton4'};
Q9inc = {'pushbutton1','pushbutton2','pushbutton4'};
Q10inc = {'pushbutton1','pushbutton2','pushbutton3'};
wrongAnswers = [Q1inc;Q2inc;Q3inc;Q4inc;Q5inc;Q6inc;Q7inc;Q8inc;Q9inc;Q10inc];

%A cell array that has the strings for all questions and answers.%
q=cell(10,5);
q(1,1)={"Who is the Intro to Computers for Engineers Professor?"};
q(1,2)={"A. Philip Brown"};
q(1,3)={"B. Cecilia Vargas"};
q(1,4)={"C. Michael Brown"};
q(1,5)={"D. Alex Bertuccio"};
q(2,1)={"How many bits are in 1 byte of data?"};
q(2,2)={"A. 16"};
q(2,3)={"B. 156"};
q(2,4)={"C. 8"};
q(2,5)={"D. 576"};
q(3,1)={"In physics, no work is done if direction of motion is..."};
q(3,2)={"A. Parallel to the force"};
q(3,3)={"B. Perpendicular to the force"};
q(3,4)={"C. 45 Degrees to the force"};
q(3,5)={"D. Small"};
q(4,1)={"What is the domain for inverse sine?"};
q(4,2)={"A. [-pi/2,pi/2]"};
q(4,3)={"B. (-pi/2,pi/2)"};
q(4,4)={"C. [-pi,pi]"};
q(4,5)={"D. (-pi,pi)"};
q(5,1)={"In uniform circular motion, where does centripetal acceleration point?"};
q(5,2)={"A. Perpendicular to centripetal force"};
q(5,3)={"B. Along the path of motion"};
q(5,4)={"C. The center"};
q(5,5)={"D. Directly parallel to current point in motion"};
q(6,1)={"What is the most electronegative element?"};
q(6,2)={"A. Carbon"};
q(6,3)={"B. Sulfur"};
q(6,4)={"C. Chlorine"};
q(6,5)={"D. Fluorine"};
q(7,1)={"What is the most reactive element on the periodic table?"};
q(7,2)={"A. Potassium"};
q(7,3)={"B. Francium"};
q(7,4)={"C. Chlorine"};
q(7,5)={"D. Fluorine"};
q(8,1)={"Which one of these is not a theorem/rule used in Calculus 151?"};
q(8,2)={"A. Rolle’s Theorem"};
q(8,3)={"B. L’Hopital’s Rule"};
q(8,4)={"C. Convergence Theorem"};
q(8,5)={"D. Mean Value Theorem"};
q(9,1)={"How many teams in the NFL"};
q(9,2)={"A. 20"};
q(9,3)={"B. 25"};
q(9,4)={"C. 32"};
q(9,5)={"D. 30"};
q(10,1)={"How many donuts in a baker’s dozen?"};
q(10,2)={"A. 10"};
q(10,3)={"B. 11"};
q(10,4)={"C. 12"};
q(10,5)={"D. 13"};

%Sets questions number to 1 for the beginning.%
qNum = 1;
handles.pushbuttonStart.Visible = 'off';

pause on

% --- Executes on button press in pushbutton1. 
% --- pushbutton1 corresponds to choice A. 
function pushbutton1_Callback(hObject, eventdata, handles)
global qNum
global answers
global wrongAnswers
global q
pause(5)

%If choice A is the correct answer.
if handles.pushbutton1.UserData == answers{qNum}
        handles.pushbutton1.BackgroundColor = 'green';
        pause(2)
        handles.pushbutton1.BackgroundColor = [.94,.94,.94];
        handles.polls.Visible = 'off';
        qNum = qNum + 1;
        handles.currentMoney.String = (qNum - 1) * 100000;
        levelNum = string(qNum);
        handles.level.String = ['Level ' levelNum];
        handles.questionBox.String = q{qNum,1};
        handles.pushbutton1.String = q{qNum,2};
        handles.pushbutton2.String = q{qNum,3};
        handles.pushbutton3.String = q{qNum,4};
        handles.pushbutton4.String = q{qNum,5};
        
        handles.pushbutton1.Visible = 'on';
        handles.pushbutton2.Visible = 'on';
        handles.pushbutton3.Visible = 'on';
        handles.pushbutton4.Visible = 'on';
        if qNum == 11
            handles.endgame.String = 'You Win $1,000,000!';
            handles.endgame.Visible = 'on';
        end
        
%If choice A is the wrong answer. 
elseif handles.pushbutton1.UserData == wrongAnswers{qNum,1}
    handles.pushbutton1.BackgroundColor = 'red';
    pause(2)
    moneyWon = handles.currentMoney.String;
    endgameString = ['   So close!' newline 'You win $',moneyWon,'!'];
    handles.endgame.String = endgameString;
    handles.endgame.Visible = 'on';
end




% --- Executes on button press in pushbutton2.
% --- pushbutton2 corresponds to choice B. 
function pushbutton2_Callback(hObject, eventdata, handles)
global qNum
global answers
global wrongAnswers
global q
pause(5)

%If choice B is the correct answer.
if handles.pushbutton2.UserData == answers{qNum} 
        handles.pushbutton2.BackgroundColor = 'green';
        pause(2)
        handles.pushbutton2.BackgroundColor = [.94,.94,.94];
        qNum = qNum + 1;
        handles.currentMoney.String = (qNum - 1) * 100000;
        levelNum = string(qNum);
        handles.level.String = ['Level ' levelNum];
        handles.questionBox.String = q{qNum,1};
        handles.pushbutton1.String = q{qNum,2};
        handles.pushbutton2.String = q{qNum,3};
        handles.pushbutton3.String = q{qNum,4};
        handles.pushbutton4.String = q{qNum,5};
        
        handles.pushbutton1.Visible = 'on';
        handles.pushbutton2.Visible = 'on';
        handles.pushbutton3.Visible = 'on';
        handles.pushbutton4.Visible = 'on';
        if qNum == 11
            handles.endgame.String = 'You Win $1,000,000!';
            handles.endgame.Visible = 'on';
        end

        handles.polls.Visible = 'off';

%If choice B is incorrect. 
elseif handles.pushbutton2.UserData == wrongAnswers{qNum,1}
    handles.pushbutton2.BackgroundColor = 'red';
    pause(2)
    moneyWon = handles.currentMoney.String;
    endgameString = ['   So close!' newline 'You win $',moneyWon,'!'];
    handles.endgame.String = endgameString;
    handles.endgame.Visible = 'on';
elseif handles.pushbutton2.UserData == wrongAnswers{qNum,2}
    handles.pushbutton2.BackgroundColor = 'red';
    pause(2)
    moneyWon = handles.currentMoney.String;
    endgameString = ['   So close!' newline 'You win $',moneyWon,'!'];
    handles.endgame.String = endgameString;
    handles.endgame.Visible = 'on';
end




% --- Executes on button press in pushbutton3.
% --- pushbutton3 corresponds to choice C. 
function pushbutton3_Callback(hObject, eventdata, handles)
global qNum
global answers
global wrongAnswers
global q
pause(5)

%If choice C is the correct choice. 
if handles.pushbutton3.UserData == answers{qNum}
        handles.pushbutton3.BackgroundColor = 'green';
        pause(2)
        handles.pushbutton3.BackgroundColor = [.94,.94,.94];
        qNum = qNum + 1;
        handles.currentMoney.String = (qNum - 1) * 100000;
        levelNum = string(qNum);
        handles.level.String = ['Level ' levelNum];
        handles.questionBox.String = q{qNum,1};
        handles.pushbutton1.String = q{qNum,2};
        handles.pushbutton2.String = q{qNum,3};
        handles.pushbutton3.String = q{qNum,4};
        handles.pushbutton4.String = q{qNum,5};
        
        handles.pushbutton1.Visible = 'on';
        handles.pushbutton2.Visible = 'on';
        handles.pushbutton3.Visible = 'on';
        handles.pushbutton4.Visible = 'on';
        if qNum == 11
            handles.endgame.String = 'You Win $1,000,000!';
            handles.endgame.Visible = 'on';
        end
        
        handles.polls.Visible = 'off';
        
%If choice C is the incorrect choice. 
elseif handles.pushbutton3.UserData == wrongAnswers{qNum,2}
    handles.pushbutton3.BackgroundColor = 'red';
    pause(2)
    moneyWon = handles.currentMoney.String;
    endgameString = ['   So close!' newline 'You win $',moneyWon,'!'];
    handles.endgame.String = endgameString;
    handles.endgame.Visible = 'on';
elseif handles.pushbutton3.UserData == wrongAnswers{qNum,3}
    handles.pushbutton3.BackgroundColor = 'red';
    pause(2)
    moneyWon = handles.currentMoney.String;
    endgameString = ['   So close!' newline 'You win $',moneyWon,'!'];
    handles.endgame.String = endgameString;
    handles.endgame.Visible = 'on';
end




% --- Executes on button press in pushbutton4.
% --- pushbutton4 corresponds to choice D. 
function pushbutton4_Callback(hObject, eventdata, handles)
global qNum
global answers
global wrongAnswers
global q
pause(5)

%If choice D is the correct answer.
if handles.pushbutton4.UserData == answers{qNum}
    handles.pushbutton4.BackgroundColor = 'green';
    pause(2) 
    handles.pushbutton4.BackgroundColor = [.94,.94,.94];
    qNum = qNum + 1;
    
        if qNum < 11
            handles.currentMoney.String = (qNum - 1) * 100000;
            levelNum = string(qNum);
            handles.level.String = ['Level ' levelNum];
            handles.questionBox.String = q{qNum,1};
            handles.pushbutton1.String = q{qNum,2};
            handles.pushbutton2.String = q{qNum,3};
            handles.pushbutton3.String = q{qNum,4};
            handles.pushbutton4.String = q{qNum,5};     
            
            handles.pushbutton1.Visible = 'on';
            handles.pushbutton2.Visible = 'on';
            handles.pushbutton3.Visible = 'on';
            handles.pushbutton4.Visible = 'on';
        elseif qNum == 11
            handles.endgame.String = 'You Win $1,000,000!';
            handles.endgame.BackgroundColor = 'green';
            handles.endgame.Visible = 'on';
        end

        handles.polls.Visible = 'off';
        
%If choice D is the incorrect answer.
elseif handles.pushbutton4.UserData == wrongAnswers{qNum,3}
    handles.pushbutton4.BackgroundColor = 'red';
    pause(2)
    moneyWon = handles.currentMoney.String;
    endgameString = ['  So close!' newline 'You win $',moneyWon,'!'];
    handles.endgame.String = endgameString;
    handles.endgame.Visible = 'on'; 
end




% --- Executes on button press in pushbuttonFiftyFifty.
function pushbuttonFiftyFifty_Callback(hObject, eventdata, handles)
global qNum
global wrongAnswers

%This will hide two incorrect pushbuttons, identifying them by using the
%wrongAnswers matrix. 
handles.(wrongAnswers{qNum,1}).Visible = 'off';
handles.(wrongAnswers{qNum,3}).Visible = 'off';
handles.pushbuttonFiftyFifty.Visible = 'off';




% --- Executes on button press in pushbuttonAskPeople.
function pushbuttonAskPeople_Callback(hObject, eventdata, handles)
global qNum
global answers

handles.polls.Visible = 'on';
handles.pushbuttonAskPeople.Visible = 'off';
if answers{qNum} == 'pushbutton1'
    handles.polls.String = ['A. 65%' newline 'B. 8%' newline 'C. 12%' newline 'D. 15%'];
elseif answers{qNum} == 'pushbutton2'
    handles.polls.String = ['A. 8%' newline 'B. 65%' newline 'C. 12%' newline 'D. 15%'];
elseif answers{qNum} == 'pushbutton3'
    handles.polls.String = ['A. 10%' newline 'B. 10%' newline 'C. 65%' newline 'D. 15%'];
elseif answers{qNum} == 'pushbutton4'
    handles.polls.String = ['A. 10%' newline 'B. 12%' newline 'C. 8%' newline 'D. 70%'];
end



% --- Executes on button press in pushbuttonPhone.
function pushbuttonPhone_Callback(hObject, eventdata, handles)
global qNum
global q
global answers
pause(2)
    handles.(answers{qNum}).BackgroundColor = 'green';
pause(2)
    handles.(answers{qNum}).BackgroundColor = [.94,.94,.94];
qNum = qNum + 1;
levelNum = string(qNum);
handles.level.String = ['Level ' levelNum];
handles.questionBox.String = q{qNum,1};
handles.pushbutton1.String = q{qNum,2};
handles.pushbutton2.String = q{qNum,3};
handles.pushbutton3.String = q{qNum,4};
handles.pushbutton4.String = q{qNum,5};
handles.currentMoney.String = (qNum - 1) * 100000;

handles.pushbuttonPhone.Visible = 'off';
handles.pushbutton1.Visible = 'on';
handles.pushbutton2.Visible = 'on';
handles.pushbutton3.Visible = 'on';
handles.pushbutton4.Visible = 'on';

    handles.polls.Visible = 'off';

if qNum == 11 %if pushing this button wins the game.
    handles.endgame.String = 'You Win $1,000,000!';
    handles.endgame.Visible = 'on';
end
