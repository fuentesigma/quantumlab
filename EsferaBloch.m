function varargout = EsferaBloch(varargin)
% ESFERABLOCH MATLAB code for EsferaBloch.fig
%      ESFERABLOCH, by itself, creates a new ESFERABLOCH or raises the existing
%      singleton*.
%
%      H = ESFERABLOCH returns the handle to a new ESFERABLOCH or the handle to
%      the existing singleton*.
%
%      ESFERABLOCH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ESFERABLOCH.M with the given input arguments.
%
%      ESFERABLOCH('Property','Value',...) creates a new ESFERABLOCH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EsferaBloch_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EsferaBloch_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EsferaBloch

% Last Modified by GUIDE v2.5 14-Dec-2011 19:42:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EsferaBloch_OpeningFcn, ...
                   'gui_OutputFcn',  @EsferaBloch_OutputFcn, ...
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


% --- Executes just before EsferaBloch is made visible.
function EsferaBloch_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EsferaBloch (see VARARGIN)

% Choose default command line output for EsferaBloch
handles.output = hObject;

% UIWAIT makes EsferaBloch wait for user response (see UIRESUME)
% uiwait(handles.figure1);

handles.index = 1;
set(hObject,'toolbar','figure');

if strcmp(get(hObject,'Visible'),'off')

    cla(handles.axes1,'reset');
    
    R  = 1;
    X0 = 0;
    Y0 = 0;
    Z0 = 0;
    N  = 50;

    %   -----------------------------------------
    %   PARAMETRIZACION DE LA ESFERA
    %   -----------------------------------------

    [Xs,Ys,Zs] = sphere(N);
    Xs = Xs*R + X0;
    Ys = Ys*R + Y0;
    Zs = Zs*R + Z0;

    eje  = -3/2:3/2;
    nodo = zeros(length(eje));

    contour3(Xs,Ys,Zs,N);

    title(' ','fontsize',10,'fontweight','b')

    xlabel('x','fontsize',11,'fontweight','b'); 
    ylabel('y','fontsize',11,'fontweight','b');
    zlabel('z','fontsize',11,'fontweight','b');

    surface(Xs,Ys,Zs,'EdgeColor',[.8 .8 .8],'FaceColor','none')
    colormap gray;
    axis equal;
    hold on; 
    grid on; 
    rotate3d;

    plot3(eje,nodo,nodo,'--k','LineWidth',2);
    plot3(nodo,eje,nodo,'--k','LineWidth',2);
    plot3(nodo,nodo,eje,'--k','LineWidth',2);

end

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = EsferaBloch_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in borrar.
function borrar_Callback(hObject, eventdata, handles)
% hObject    handle to borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.index = 1;

cla(handles.axes1,'reset');
    
    R  = 1;
    X0 = 0;
    Y0 = 0;
    Z0 = 0;
    N  = 50;

    %   -----------------------------------------
    %   PARAMETRIZACION DE LA ESFERA
    %   -----------------------------------------

    [Xs,Ys,Zs] = sphere(N);
    Xs = Xs*R + X0;
    Ys = Ys*R + Y0;
    Zs = Zs*R + Z0;

    eje  = -3/2:3/2;
    nodo = zeros(length(eje));

    contour3(Xs,Ys,Zs,N);

    title(' ','fontsize',10,'fontweight','b')

    xlabel('x','fontsize',11,'fontweight','b'); 
    ylabel('y','fontsize',11,'fontweight','b');
    zlabel('z','fontsize',11,'fontweight','b');

    surface(Xs,Ys,Zs,'EdgeColor',[.8 .8 .8],'FaceColor','none')
    colormap gray;
    axis equal;
    hold on; 
    grid on; 
    rotate3d;

    plot3(eje,nodo,nodo,'--k','LineWidth',2);
    plot3(nodo,eje,nodo,'--k','LineWidth',2);
    plot3(nodo,nodo,eje,'--k','LineWidth',2);
    
guidata(hObject, handles);


% --------------------------------------------------------------------
function archivo_Callback(hObject, eventdata, handles)
% hObject    handle to archivo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function opciones_Callback(hObject, eventdata, handles)
% hObject    handle to opciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function girar_Callback(hObject, eventdata, handles)
% hObject    handle to girar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function abrir_Callback(hObject, eventdata, handles)
% hObject    handle to abrir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile('*.dat');
if ~isequal(file, 0)
    open(file);
end

% --------------------------------------------------------------------
function imprimir_Callback(hObject, eventdata, handles)
% hObject    handle to imprimir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printdlg(handles.figure1)

% --------------------------------------------------------------------
function cerrar_Callback(hObject, eventdata, handles)
% hObject    handle to cerrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection = questdlg(['Cerrar ' get(handles.figure1,'Name') '?'],...
                     ['QuantumLab '],...
                     'Si','No','Si');
if strcmp(selection,'No')
    return;
end

delete(handles.figure1);

% --------------------------------------------------------------------
function correr_Callback(hObject, eventdata, handles)
% hObject    handle to correr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1,'reset');
    
    R  = 1;
    X0 = 0;
    Y0 = 0;
    Z0 = 0;
    N  = 50;

    %   -----------------------------------------
    %   PARAMETRIZACION DE LA ESFERA
    %   -----------------------------------------

    [Xs,Ys,Zs] = sphere(N);
    Xs = Xs*R + X0;
    Ys = Ys*R + Y0;
    Zs = Zs*R + Z0;

    eje  = -3/2:3/2;
    nodo = zeros(length(eje));

    contour3(Xs,Ys,Zs,N);

    title(' ','fontsize',10,'fontweight','b')

    xlabel('x','fontsize',11,'fontweight','b'); 
    ylabel('y','fontsize',11,'fontweight','b');
    zlabel('z','fontsize',11,'fontweight','b');

    surface(Xs,Ys,Zs,'EdgeColor',[.8 .8 .8],'FaceColor','none')
    colormap gray;
    axis equal;
    hold on; 
    grid on; 
    rotate3d;

    plot3(eje,nodo,nodo,'--k','LineWidth',2);
    plot3(nodo,eje,nodo,'--k','LineWidth',2);
    plot3(nodo,nodo,eje,'--k','LineWidth',2);
    
    %   -----------------------------------------
    %   DATOS
    %   -----------------------------------------
    
    M = importdata('datos.dat');
  
    plot3(M(:,1),M(:,2),M(:,3),'or','LineWidth',3);
    
guidata(hObject, handles); 

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
function simular_Callback(hObject, eventdata, handles)
% hObject    handle to simular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function guardar_Callback(hObject, eventdata, handles)
% hObject    handle to guardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

saveas(handles.figure1,'QuantumLab.jpg');

% --------------------------------------------------------------------
function question_Callback(hObject, eventdata, handles)
% hObject    handle to question (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function paso_Callback(hObject, eventdata, handles)
% hObject    handle to paso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


cla(handles.axes1,'reset');
    
    R  = 1;
    X0 = 0;
    Y0 = 0;
    Z0 = 0;
    N  = 50;

    %   -----------------------------------------
    %   PARAMETRIZACION DE LA ESFERA
    %   -----------------------------------------

    [Xs,Ys,Zs] = sphere(N);
    Xs = Xs*R + X0;
    Ys = Ys*R + Y0;
    Zs = Zs*R + Z0;

    eje  = -3/2:3/2;
    nodo = zeros(length(eje));

    contour3(Xs,Ys,Zs,N);

    title(' ','fontsize',10,'fontweight','b')

    xlabel('x','fontsize',11,'fontweight','b'); 
    ylabel('y','fontsize',11,'fontweight','b');
    zlabel('z','fontsize',11,'fontweight','b');

    surface(Xs,Ys,Zs,'EdgeColor',[.8 .8 .8],'FaceColor','none')
    colormap gray;
    axis equal;
    hold on; 
    grid on; 
    rotate3d;

    plot3(eje,nodo,nodo,'--k','LineWidth',2);
    plot3(nodo,eje,nodo,'--k','LineWidth',2);
    plot3(nodo,nodo,eje,'--k','LineWidth',2);
    
    %   -----------------------------------------
    %   DATOS
    %   -----------------------------------------
    
    M = importdata('datos.dat');
 
    [R,C] = size(M);
        
    if ( handles.index <= R )
        
        plot3(M(handles.index,1),M(handles.index,2),M(handles.index,3),'ob','LineWidth',3);
        handles.index = handles.index + 1;
        
    elseif (handles.index > R )
        handles.index = 1;
    end

    guidata(hObject, handles);


% --------------------------------------------------------------------
function analisis_Callback(hObject, eventdata, handles)
% hObject    handle to analisis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function adatos_Callback(hObject, eventdata, handles)
% hObject    handle to adatos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

run Analisis

% --------------------------------------------------------------------
function xyz_Callback(hObject, eventdata, handles)
% hObject    handle to xyz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

run Coordenadas
