function varargout = QuantumLab(varargin)
% QUANTUMLAB MATLAB code for QuantumLab.fig
%      QUANTUMLAB, by itself, creates a new QUANTUMLAB or raises the existing
%      singleton*.
%
%      H = QUANTUMLAB returns the handle to a new QUANTUMLAB or the handle to
%      the existing singleton*.
%
%      QUANTUMLAB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUANTUMLAB.M with the given input arguments.
%
%      QUANTUMLAB('Property','Value',...) creates a new QUANTUMLAB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before QuantumLab_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to QuantumLab_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help QuantumLab

% Last Modified by GUIDE v2.5 12-Jan-2012 16:31:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @QuantumLab_OpeningFcn, ...
                   'gui_OutputFcn',  @QuantumLab_OutputFcn, ...
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


% --- Executes just before QuantumLab is made visible.
function QuantumLab_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to QuantumLab (see VARARGIN)

% Choose default command line output for QuantumLab
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes QuantumLab wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = QuantumLab_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in simular.
function simular_Callback(hObject, eventdata, handles)
% hObject    handle to simular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function campo_Callback(hObject, eventdata, handles)
% hObject    handle to campo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of campo as text
%        str2double(get(hObject,'String')) returns contents of campo as a double

input = str2double(get(hObject,'String'));

if (isempty(input))
     set(hObject,'String','0')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function campo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to campo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function frecuenciac_Callback(hObject, eventdata, handles)
% hObject    handle to frecuenciac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frecuenciac as text
%        str2double(get(hObject,'String')) returns contents of frecuenciac as a double

input = str2double(get(hObject,'String'));

if (isempty(input))
     set(hObject,'String','0')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function frecuenciac_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frecuenciac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function frecuenciaq_Callback(hObject, eventdata, handles)
% hObject    handle to frecuenciaq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frecuenciaq as text
%        str2double(get(hObject,'String')) returns contents of frecuenciaq as a double

input = str2double(get(hObject,'String'));

if (isempty(input))
     set(hObject,'String','0')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function frecuenciaq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frecuenciaq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ciclos_Callback(hObject, eventdata, handles)
% hObject    handle to ciclos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ciclos as text
%        str2double(get(hObject,'String')) returns contents of ciclos as a double

input = str2double(get(hObject,'String'));

if (isempty(input))
     set(hObject,'String','0')
end

guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function ciclos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ciclos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tiempoe_Callback(hObject, eventdata, handles)
% hObject    handle to tiempoe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tiempoe as text
%        str2double(get(hObject,'String')) returns contents of tiempoe as a double

input = str2double(get(hObject,'String'));

if (isempty(input))
     set(hObject,'String','0')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function tiempoe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tiempoe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tiempoa_Callback(hObject, eventdata, handles)
% hObject    handle to tiempoa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tiempoa as text
%        str2double(get(hObject,'String')) returns contents of tiempoa as a double

input = str2double(get(hObject,'String'));

if (isempty(input))
     set(hObject,'String','0')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function tiempoa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tiempoa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tiempoi_Callback(hObject, eventdata, handles)
% hObject    handle to tiempoi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tiempoi as text
%        str2double(get(hObject,'String')) returns contents of tiempoi as a double

input = str2double(get(hObject,'String'));

if (isempty(input))
     set(hObject,'String','0')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function tiempoi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tiempoi (see GCBO)
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


% --------------------------------------------------------------------
function q_Callback(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function compila_Callback(hObject, eventdata, handles)
% hObject    handle to compila (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.estado,'String','Compilando...');

%   PARAMETROS DE SIMULACION
vCiclos  = get(handles.ciclos, 'String');
vTiempoe = get(handles.tiempoe,'String');
vTiempoa = get(handles.tiempoa,'String');
vTiempoi = get(handles.tiempoi,'String');

%   CARACTERISTICAS DEL SISTEMA
vCampo       = get(handles.campo,'String');
vFrecuenciac = get(handles.frecuenciac,'String');
vFrecuenciaq = get(handles.frecuenciaq,'String');

%   ARCHIVOS
fDatos = fopen('variables.dat','w');
fprintf(fDatos,'%s %s %s %s %s %s %s', vCiclos, vTiempoe, vTiempoa, vTiempoi, vCampo, vFrecuenciac, vFrecuenciaq);
fclose(fDatos);

!./qubit

%run EsferaBloch

pause(2);

set(handles.estado,'String','[!] Compilado');

pause(15);

set(handles.estado,'String','Disponible');

% --------------------------------------------------------------------
function que_Callback(hObject, eventdata, handles)
% hObject    handle to que (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ayuda_Callback(hObject, eventdata, handles)
% hObject    handle to ayuda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

open ayuda.pdf

% --------------------------------------------------------------------
function info_Callback(hObject, eventdata, handles)
% hObject    handle to info (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

selection = questdlg('QuantumLab (R) 2011 J. Fuentes','QuantumLab','Ok','');

if strcmp(selection,'Ok')
    return;
end


% --------------------------------------------------------------------
function esfera_Callback(hObject, eventdata, handles)
% hObject    handle to esfera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

run EsferaBloch

% --------------------------------------------------------------------
function apagar_Callback(hObject, eventdata, handles)
% hObject    handle to apagar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

selection = questdlg(['Apagar ' get(handles.figure1,'Name') '?'],...
                     ['QuantumLab '],...
                     'Si','No','Si');
if strcmp(selection,'No')
    return;
else
    fDatos = fopen('variables.dat','w');
    fprintf(fDatos,'0 0 0 0 0 0 0');
    fclose(fDatos);
    
    fTiempo = fopen('tiempo.dat','w');
    fprintf(fTiempo,'0');
    fclose(fTiempo);
    
    close;
    quit
end
