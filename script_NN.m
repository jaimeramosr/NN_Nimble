%% Repartir los datos de Carba en 3 grupos:
% Supongamos que 'data' es tu array de 140 filas
n = size(RESULT, 1);  % número total de filas (debería ser 140)
indices = randperm(n);  % genera un vector aleatorio de índices

% Calcular número de filas para cada conjunto:
n_train = round(0.80 * n);  % 80% = 112 filas
n_valid = round(0.15 * n);  % 15% = 21 filas
n_test  = n - n_train - n_valid;  % El resto (5% = 7 filas)

% Crear los conjuntos usando los índices aleatorios:
data_train = RESULT(indices(1:n_train), :);
data_valid = RESULT(indices(n_train+1:n_train+n_valid), :);
data_test  = RESULT(indices(n_train+n_valid+1:end), :);

% Pasar las entradas a cms.
data_train(:,2:6)=data_train(:,2:6)*100;
data_valid(:,2:6)=data_valid(:,2:6)*100;
data_test(:,2:6)=data_test(:,2:6)*100;

writematrix(data_train(:,2:end), 'datos_train.csv');
writematrix(data_valid(:,2:end), 'datos_valid.csv');
writematrix(data_test(:,2:end), 'datos_test.csv');

%% Tomar los datos en archivos csv. para comprar los resultados obtenidos.
data_predicciones = readtable('datos_resultados_predicciones.csv');data_predicciones=table2array (data_predicciones);
data_train = readtable('datos_train.csv');data_train=table2array (data_train);
data_test = readtable('datos_test.csv');data_test=table2array (data_test);
data_valid = readtable('datos_valid.csv');data_valid=table2array (data_valid);

% Pasar las entradas a cms.
data_train(:,1:5)=data_train(:,1:5)*100;
% Para guardar en csv.
writematrix(A, 'datos.csv')

h1 = plot(data_predicciones','*r');  % Plotea data_salida en rojo
hold on
h2 = plot(data_test','ob');    % Plotea data_test en azul

% Usar el primer handle de cada grupo para la leyenda
legend([h1(1), h2(1)], 'Output', 'Desired output')