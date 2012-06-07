function varargout = squarecirc(varargin)
% SQUARECIRC MATLAB code for squarecirc.fig
%      SQUARECIRC, by itself, creates a new SQUARECIRC or raises the existing
%      singleton*.
%
%      H = SQUARECIRC returns the handle to a new SQUARECIRC or the handle to
%      the existing singleton*.
%
%      SQUARECIRC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SQUARECIRC.M with the given input arguments.
%
%      SQUARECIRC('Property','Value',...) creates a new SQUARECIRC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before squarecirc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to squarecirc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help squarecirc

% Last Modified by GUIDE v2.5 24-Apr-2012 23:07:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @squarecirc_OpeningFcn, ...
                   'gui_OutputFcn',  @squarecirc_OutputFcn, ...
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


% --- Executes just before squarecirc is made visible.
function squarecirc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to squarecirc (see VARARGIN)

% Choose default command line output for squarecirc
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes squarecirc wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = squarecirc_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnSq.
function btnSq_Callback(hObject, eventdata, handles)
% hObject    handle to btnSq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% цикл по квадратам
for k=1:10
    % очистка осей
    cla
    % вывод квадрата размером с оси (т.е. 1 на 1) случайного цвета, задаваемого в RGB 
    rectangle('FaceColor',[rand(1) rand(1) rand(1)])
    % задержка на 0.5 сек.
    pause(0.5)
end


% --- Executes on button press in btnCirc.
function btnCirc_Callback(hObject, eventdata, handles)
% hObject    handle to btnCirc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% цикл по кругам
for k=1:10
    % очистка осей
    cla 
    % вывод круга диаметром 1 случайного цвета, задаваемого в RGB
    rectangle('FaceColor',[rand(1) rand(1) rand(1)],'Curvature',[1 1])
    % задержка на 0.5 сек.
    pause(0.5)
end
        


% --- Executes on button press in btnTx.
function btnTx_Callback(hObject, eventdata, handles)
% hObject    handle to btnTx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% создание графического окна размером 150пт. на 20пт. и невидимых осей
  hF = figure('Units', 'points', 'MenuBar', 'none', 'Color', 'k');
	p = get(hF, 'Position')
	set(hF, 'Position', [p(1) p(2) 150 20])
	axes('Position', [0 0 1 1], 'Visible', 'off')
	% создание текстового объекта с выравниванием по горизонтали по низу
	hT = text('Position', [0 0], 'VerticalAlignment', 'bottom', 'FontSize', 20, 'Color', 'g');
	% задание текста для бегущей строки
	TEXT = 'This is a simple example of creeping line';
	% создание пустой строковой переменной
	str = '';
	% изменение строковой переменной в цикле
	for k=1:length(TEXT)
	    if length(str)<15
	        str = [str TEXT(k)];
	    else
	        % здесь начинается эффект бегущей строки
	        str = [str(2:length(str)) TEXT(k)];
	    end
	    set(hT, 'String', str)
	    pause(0.1)
	end

% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
