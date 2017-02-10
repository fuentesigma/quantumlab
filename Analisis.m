function varargout = Analisis(varargin)
% ANALISIS MATLAB code for Analisis.fig
%      ANALISIS, by itself, creates a new ANALISIS or raises the existing
%      singleton*.
%
%      H = ANALISIS returns the handle to a new ANALISIS or the handle to
%      the existing singleton*.
%
%      ANALISIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANALISIS.M with the given input arguments.
%
%      ANALISIS('Property','Value',...) creates a new ANALISIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Analisis_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Analisis_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Analisis

% Last Modified by GUIDE v2.5 14-Dec-2011 19:48:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Analisis_OpeningFcn, ...
                   'gui_OutputFcn',  @Analisis_OutputFcn, ...
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


% --- Executes just before Analisis is made visible.
function Analisis_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Analisis (see VARARGIN)

% Choose default command line output for Analisis
handles.output = hObject;

% UIWAIT makes Analisis wait for user response (see UIRESUME)
% uiwait(handles.figure1);

Datos = importdata('datos.dat');
Z = Datos(:,3);

if (isempty(Datos))
     set(handles.maxima,'String','0');
     set(handles.minima,'String','0');
     set(handles.ecuador,'String','0');
end

guidata(hObject, handles);

zmaxima = max(Z);
zminima = min(Z);

set(handles.maxima,'String',num2str(zmaxima));
set(handles.minima,'String',num2str(zminima));

n = 0;
for i = 1:length(Z)
    
    B(i) = Z(i)*(-1);
    
    if( B(i) == abs(Z(i)) && Z(i) ~= 0 )
        n(i) = 1;
    else
        n(i) = 0;
    end
        
end

signo = 0;
for i = 2:length(Z)

    if (n(i-1) == n(i))
        signo = 0 + signo;
    else
        signo = 1 + signo;
    end
    
end

set(handles.ecuador,'String',num2str(signo));

%   -------------------------------

sTiempo = importdata('tiempo.dat'); 

if (isempty(sTiempo))
     set(handles.tiempo,'String','0')
end

set(handles.tiempo,'String',num2str(sTiempo));


guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = Analisis_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
