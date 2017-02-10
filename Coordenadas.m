function varargout = Coordenadas(varargin)
% COORDENADAS MATLAB code for Coordenadas.fig
%      COORDENADAS, by itself, creates a new COORDENADAS or raises the existing
%      singleton*.
%
%      H = COORDENADAS returns the handle to a new COORDENADAS or the handle to
%      the existing singleton*.
%
%      COORDENADAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COORDENADAS.M with the given input arguments.
%
%      COORDENADAS('Property','Value',...) creates a new COORDENADAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Coordenadas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Coordenadas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Coordenadas

% Last Modified by GUIDE v2.5 23-Nov-2011 23:35:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Coordenadas_OpeningFcn, ...
                   'gui_OutputFcn',  @Coordenadas_OutputFcn, ...
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


% --- Executes just before Coordenadas is made visible.
function Coordenadas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Coordenadas (see VARARGIN)

% Choose default command line output for Coordenadas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Coordenadas wait for user response (see UIRESUME)
% uiwait(handles.figure1);
format short

Datos = importdata('datos.dat');

[L,F] = size(Datos);

for i = 1:L
    M(i,:) = [Datos(i,1),Datos(i,2),Datos(i,3),i-1];
end

coordenadas = num2str(M);
set(handles.lista,'String',coordenadas);

% --- Outputs from this function are returned to the command line.
function varargout = Coordenadas_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in lista.
function lista_Callback(hObject, eventdata, handles)
% hObject    handle to lista (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lista contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lista

% --- Executes during object creation, after setting all properties.
function lista_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lista (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
