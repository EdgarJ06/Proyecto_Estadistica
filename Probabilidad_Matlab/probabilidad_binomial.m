function varargout = probabilidad_binomial(varargin)
% PROBABILIDAD_BINOMIAL MATLAB code for probabilidad_binomial.fig
%      PROBABILIDAD_BINOMIAL, by itself, creates a new PROBABILIDAD_BINOMIAL or raises the existing
%      singleton*.
%
%      H = PROBABILIDAD_BINOMIAL returns the handle to a new PROBABILIDAD_BINOMIAL or the handle to
%      the existing singleton*.
%
%      PROBABILIDAD_BINOMIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROBABILIDAD_BINOMIAL.M with the given input arguments.
%
%      PROBABILIDAD_BINOMIAL('Property','Value',...) creates a new PROBABILIDAD_BINOMIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before probabilidad_binomial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to probabilidad_binomial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help probabilidad_binomial

% Last Modified by GUIDE v2.5 20-Oct-2022 21:38:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @probabilidad_binomial_OpeningFcn, ...
                   'gui_OutputFcn',  @probabilidad_binomial_OutputFcn, ...
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


% --- Executes just before probabilidad_binomial is made visible.
function probabilidad_binomial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to probabilidad_binomial (see VARARGIN)

% Choose default command line output for probabilidad_binomial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes probabilidad_binomial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = probabilidad_binomial_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtNExitos_Callback(hObject, eventdata, handles)
% hObject    handle to txtNExitos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtNExitos as text
%        str2double(get(hObject,'String')) returns contents of txtNExitos as a double


% --- Executes during object creation, after setting all properties.
function txtNExitos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtNExitos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTotalCasos_Callback(hObject, eventdata, handles)
% hObject    handle to txtNExitos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtNExitos as text
%        str2double(get(hObject,'String')) returns contents of txtNExitos as a double


% --- Executes during object creation, after setting all properties.
function txtTotalCasos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtNExitos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtProbabilidad_Callback(hObject, eventdata, handles)
% hObject    handle to txtProbabilidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtProbabilidad as text
%        str2double(get(hObject,'String')) returns contents of txtProbabilidad as a double


% --- Executes during object creation, after setting all properties.
function txtProbabilidad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtProbabilidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnCalcular.
function btnCalcular_Callback(hObject, eventdata, handles)
% Código qué realizara la función de calcular la txtprobabilidad:
n=str2double(get(handles.txtTotalCasos,'string'));
x=str2double(get(handles.txtNExitos,'string'));
p=str2double(get(handles.txtProbabilidad,'string'));

Resultado = binopdf(x,n,p);
set(handles.txtResultado,'string', num2str(Resultado));

Porcentaje_Probabilidad = (Resultado * 100);
set(handles.txtPorcentaje,'string', num2str(Porcentaje_Probabilidad)+ "%");

function txtResultado_Callback(hObject, eventdata, handles)
% hObject    handle to txtResultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtResultado as text
%        str2double(get(hObject,'String')) returns contents of txtResultado as a double


% --- Executes during object creation, after setting all properties.
function txtResultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtResultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtPorcentaje_Callback(hObject, eventdata, handles)
% hObject    handle to txtPorcentaje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtPorcentaje as text
%        str2double(get(hObject,'String')) returns contents of txtPorcentaje as a double


% --- Executes during object creation, after setting all properties.
function txtPorcentaje_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtPorcentaje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnLimpiar.
function btnLimpiar_Callback(hObject, eventdata, handles)
set(handles.txtTotalCasos,'string', " ");
set(handles.txtNExitos,'string', " ");
set(handles.txtProbabilidad,'string', " ");
set(handles.txtResultado,'string', " ");
set(handles.txtPorcentaje,'string', " ");
