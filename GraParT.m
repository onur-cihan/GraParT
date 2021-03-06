function varargout = GraParT(varargin)
% GRAPART MATLAB code for GraParT.fig
%      GRAPART, by itself, creates a new GRAPART or raises the existing
%      singleton*.
%
%      H = GRAPART returns the handle to a new GRAPART or the handle to
%      the existing singleton*.
%
%      GRAPART('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPART.M with the given input arguments.
%
%      GRAPART('Property','Value',...) creates a new GRAPART or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GraParT_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GraParT_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GraParT

% Last Modified by GUIDE v2.5 28-Feb-2021 12:18:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GraParT_OpeningFcn, ...
                   'gui_OutputFcn',  @GraParT_OutputFcn, ...
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


% --- Executes just before GraParT is made visible.
function GraParT_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GraParT (see VARARGIN)

% Choose default command line output for GraParT
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GraParT wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GraParT_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtRelTol_Callback(hObject, eventdata, handles)
% hObject    handle to txtRelTol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtRelTol as text
%        str2double(get(hObject,'String')) returns contents of txtRelTol as a double


% --- Executes during object creation, after setting all properties.
function txtRelTol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtRelTol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtAbsTol_Callback(hObject, eventdata, handles)
% hObject    handle to txtAbsTol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtAbsTol as text
%        str2double(get(hObject,'String')) returns contents of txtAbsTol as a double


% --- Executes during object creation, after setting all properties.
function txtAbsTol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtAbsTol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtSimTime_Callback(hObject, eventdata, handles)
% hObject    handle to txtSimTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtSimTime as text
%        str2double(get(hObject,'String')) returns contents of txtSimTime as a double


% --- Executes during object creation, after setting all properties.
function txtSimTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtSimTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupSolver.
function popupSolver_Callback(hObject, eventdata, handles)
% hObject    handle to popupSolver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupSolver contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupSolver


% --- Executes during object creation, after setting all properties.
function popupSolver_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupSolver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listEdges.
function listEdges_Callback(hObject, eventdata, handles)
% hObject    handle to listEdges (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listEdges contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listEdges


% --- Executes during object creation, after setting all properties.
function listEdges_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listEdges (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtFrom_Callback(hObject, eventdata, handles)
% hObject    handle to txtFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFrom as text
%        str2double(get(hObject,'String')) returns contents of txtFrom as a double


% --- Executes during object creation, after setting all properties.
function txtFrom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTo_Callback(hObject, eventdata, handles)
% hObject    handle to txtTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTo as text
%        str2double(get(hObject,'String')) returns contents of txtTo as a double


% --- Executes during object creation, after setting all properties.
function txtTo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtWeight_Callback(hObject, eventdata, handles)
% hObject    handle to txtWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtWeight as text
%        str2double(get(hObject,'String')) returns contents of txtWeight as a double


% --- Executes during object creation, after setting all properties.
function txtWeight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnAdd.
function btnAdd_Callback(hObject, eventdata, handles)
% hObject    handle to btnAdd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(handles.listEdges,'String');
newEdge = [get(handles.txtFrom,'String') ', ' get(handles.txtTo,'String') ', ' get(handles.txtWeight,'String')];
if ~any(strcmp(a,newEdge))
    a{end+1} = newEdge;
    set(handles.listEdges,'String',a);
end

s = [];
t = [];
w = [];
a = get(handles.listEdges,'String');
allstw = [];
for ii=1:length(a)
    allstw = [allstw; str2num(a{ii})];
end
n = max(max(allstw(:,1:2)));
A = zeros(n);
for ii=1:length(a)
    [sNew, remainder] = strtok(a{ii},', ');
    [tNew, wNew] = strtok(remainder(3:end),', ');
    wNew = wNew(3:end);
    sNew = str2num(sNew);
    tNew = str2num(tNew);
    wNew = str2num(wNew);
    s = [s sNew];
    t = [t tNew];
    w = [w wNew];
    A(tNew, sNew) = wNew;
end
L = -A;
L = L - diag(diag(L));
L = L + diag(sum(abs(L),2));
roots = findRoots(A);
handles.s = s;
handles.t = t;
handles.w = w;
handles.n = n;
handles.A = A;
handles.L = L;
handles.roots = roots;
guidata(hObject,handles)

% --- Executes on button press in btnLoad.
function btnLoad_Callback(hObject, eventdata, handles)
% hObject    handle to btnLoad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileName,filePath] = uigetfile('*.graph', 'Select a .graph file'); % Open a browse dialog window

if isequal(fileName,0) 
    errordlg('You did not choose a file!');
    return;
end
set(handles.listEdges,'String',[]);
fullFilePath = fullfile(filePath,fileName); % Obtain the full path of the .graph file
fid = fopen(fullFilePath, 'r');
while(1)
    oneLine = fgetl(fid);
    if oneLine == -1
        break;
    elseif length(oneLine)>=5
    a = get(handles.listEdges,'String');        
    a{end+1} = oneLine;
    set(handles.listEdges,'String',a);
    end
end
fclose(fid);

s = [];
t = [];
w = [];
a = get(handles.listEdges,'String');
allstw = [];
for ii=1:length(a)
    allstw = [allstw; str2num(a{ii})];
end
n = max(max(allstw(:,1:2)));
A = zeros(n);
for ii=1:length(a)
    stw = str2num(a{ii});
    sNew = stw(1);
    tNew = stw(2);
    wNew = stw(3);
    s = [s sNew];
    t = [t tNew];
    w = [w wNew];
    A(tNew, sNew) = wNew;
end
L = -A;
L = L - diag(diag(L));
L = L + diag(sum(abs(L),2));
roots = findRoots(A);
handles.s = s;
handles.t = t;
handles.w = w;
handles.n = n;
handles.A = A;
handles.L = L;
handles.roots = roots;
guidata(hObject,handles)



% --- Executes on button press in btnSave.
function btnSave_Callback(hObject, eventdata, handles)
% hObject    handle to btnSave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileName,filePath] = uiputfile('*.graph','Save the graph as...');
if fileName
    fullFilePath = fullfile(filePath,fileName);
    fid = fopen(fullFilePath,'w');
    a = get(handles.listEdges,'String');
	for ii=1:length(a)
        fprintf(fid,'%s\n',a{ii});
    end
    fclose(fid);
end

% --- Executes on button press in btnRemove.
function btnRemove_Callback(hObject, eventdata, handles)
% hObject    handle to btnRemove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

indexSelected = get(handles.listEdges,'Value');
allItems = get(handles.listEdges,'String');
if length(allItems) < 1
    return
end
if indexSelected > length(allItems)
    return
end
allItems(indexSelected) = [];

newIndex=indexSelected-1;
if newIndex<1; newIndex=1;end %take care of exception

set(handles.listEdges,'String', allItems,'Value', newIndex);

if length(allItems) < 1
    return;
end
s = [];
t = [];
w = [];
a = get(handles.listEdges,'String');
for ii=1:length(a)
    [sNew, remainder] = strtok(a{ii},', ');
    [tNew, wNew] = strtok(remainder(3:end),', ');
    wNew = wNew(3:end);
    sNew = str2num(sNew);
    tNew = str2num(tNew);
    wNew = str2num(wNew);
    s = [s sNew];
    t = [t tNew];
    w = [w wNew];
end
n = max([s t]);
A = zeros(n);
for ii=1:length(a)
    [sNew, remainder] = strtok(a{ii},', ');
    [tNew, wNew] = strtok(remainder(3:end),', ');
    wNew = wNew(3:end);
    sNew = str2num(sNew);
    tNew = str2num(tNew);
    wNew = str2num(wNew);
    A(tNew, sNew) = wNew;
end
L = -A;
L = L - diag(diag(L));
L = L + diag(sum(abs(L),2));
roots = findRoots(A);
handles.s = s;
handles.t = t;
handles.w = w;
handles.n = n;
handles.A = A;
handles.L = L;
handles.roots = roots;
guidata(hObject,handles)                             

% --- Executes on selection change in popupInitialCon.
function popupInitialCon_Callback(hObject, eventdata, handles)
% hObject    handle to popupInitialCon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupInitialCon contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupInitialCon


% --- Executes during object creation, after setting all properties.
function popupInitialCon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupInitialCon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnRun.
function btnRun_Callback(hObject, eventdata, handles)
% hObject    handle to btnRun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isfield(handles, 'n')
    return;
end
if handles.n < 1
    return;
end
absTol = str2num(get(handles.txtAbsTol,'String'));
relTol = str2num(get(handles.txtRelTol,'String'));
simulationTime = str2num(get(handles.txtSimTime,'String'));
solverIndex = get(handles.popupSolver,'Value');
initialConIndex = get(handles.popupInitialCon,'Value');
n = handles.n;
A = handles.A;
L = handles.L;
m = length(handles.s);
tspan = [0, simulationTime];
options = odeset('RelTol',relTol,'AbsTol',absTol);


switch initialConIndex
    case 1
        x0 = [1:n]';
    case 2
        x0 = rand(n,1);
end

switch solverIndex
    case 1
        [t,xData] = ode45(@(t,x)continuousSolver(tspan, x, A),tspan, x0, options);       
    case 2
        [t,xData] = ode23(@(t,x)continuousSolver(tspan, x, A),tspan, x0, options);       
    case 3
        [t,xData] = ode113(@(t,x)continuousSolver(tspan, x, A),tspan, x0, options);       
end

for ii = 1:n
    for jj = 1:size(xData,1)
        x{ii,jj} = xData(jj,ii);
    end
end
xf = (expm(-L)^1e16)*x0;
axes(handles.axesSim)
cla;
for ii = 1:n
    plot(t, [x{ii,:}], 'LineWidth',2);
    hold on;
end
grid on;
for ii = 1:n
    iiStr = num2str(ii);
    underscoreStr = '';
    for jj=1:length(iiStr)
        underscoreStr = [underscoreStr '_' iiStr(jj)];
    end
    legendText{ii} = sprintf('x%s(t)',underscoreStr);
end
lgd = legend(legendText, 'NumColumns', 3);
lgd.FontSize = 8;
uniqueValues = uniquetol(xf,1e-10,'DataScale', 1);
pG = handles.pG;


% --- Executes on button press in btnPlot.
function btnPlot_Callback(hObject, eventdata, handles)
% hObject    handle to btnPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isfield(handles, 'n')
    return;
end
n = handles.n;
listOfEdges = get(handles.listEdges,'String');
s = [];
t = [];
weights = [];
for ii=1:length(listOfEdges)
    [sNew, remainder] = strtok(listOfEdges{ii},', ');
    [tNew, weightsNew] = strtok(remainder(3:end),', ');
    weightsNew = weightsNew(3:end);
    s = [s str2num(sNew)];
    t = [t str2num(tNew)];
    weights = [weights str2num(weightsNew)];
end
G = digraph(s,t,weights);
axes(handles.axesGraph)
a = plot(G);
A = zeros(max([s t]));
for ii=1:length(s)
    A(t(ii),s(ii)) = weights(ii);
end
A=double(A);
pG = partitionGraph(A);
assignin('base', 'pG', pG);
seq = [];
teq = [];
for ii = 1: length(pG.secondary.vertices)
    for jj =1: length(pG.primary.vertices)
        if norm(A(pG.secondary.vertices{ii},pG.primary.vertices{jj}))>0
            seq = [seq jj];
            teq = [teq pG.lp+ii];
        end
    end
    for jj =1: length(pG.secondary.vertices)
        if norm(A(pG.secondary.vertices{ii}, pG.secondary.vertices{jj}))>0
            if ii ~= jj
                seq = [seq pG.lp+jj];
                teq = [teq pG.lp+ii];
            end
        end
    end
end
Geq = digraph(seq,teq);
axes(handles.axesEqGraph)
a2 = plot(Geq);
handles.pG = pG;
for ii=1:pG.lp
    tempLabel = sprintf('P%s',num2str(ii));
    labelnode(a2,ii,tempLabel);
end
for ii=1:pG.ls
    tempLabel = sprintf('S%s',num2str(ii));
    labelnode(a2,pG.lp+ii,tempLabel);
end

subgraphList = sprintf('\n\nThe subgraphs are computed as:');

for ii = 1:pG.lp
    subgraphList = sprintf('%s\nPrimary %d: ', subgraphList, ii);
    
    for jj = [pG.primary.vertices{ii}]
        if jj == pG.primary.vertices{ii}(1)
           subgraphList = sprintf('%s %s', subgraphList, num2str(jj));        
        else
            subgraphList = sprintf('%s, %s', subgraphList, num2str(jj));
        end
    end
end

for ii = 1:pG.ls
    subgraphList = sprintf('%s\nSecondary %d: ', subgraphList, ii);
    for jj = [pG.secondary.vertices{ii}]
        if jj == pG.secondary.vertices{ii}(1)
           subgraphList = sprintf('%s %s', subgraphList, num2str(jj));        
        else
            subgraphList = sprintf('%s, %s', subgraphList, num2str(jj));
        end
    end
end
m = length(handles.s);

myData = sprintf('The network consists of %d nodes and %d edges\n%s', n, m, subgraphList);

set(handles.txtReport, 'String', myData);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function txtReport_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtReport (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function txtReport_Callback(hObject, eventdata, handles)
% hObject    handle to txtReport (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtReport as text
%        str2double(get(hObject,'String')) returns contents of txtReport as a double


% --- Executes during object creation, after setting all properties.
function btnPlot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btnPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
