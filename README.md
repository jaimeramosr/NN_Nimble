Red neuronal del proyecto Nimble para el cálculo de las trayectorias del exoesqueleto a partir de las medidas antropométricas del paciente y los objetivos de longitud y altura de paso introducidos.
Documentación:
  - NN.pth: modelo entrenado de red
  - NN_Nimble.ipynb: programación de entrenamiento y validación del modelo
  - datos_train/valid/test: conjunto de datos de entrenamiento/validación/test de la NN. Se componen de 5 columnas co los datos de entrada y 30 con los datos X,Y de salida.
  - datos_resultados_predicciones: conjunto de datos obtenidos tras la utilización del modelo entrenado con los datos_test.
  - script_NN.m: script de MATLAB para el análisis de las predicciones.
  - Tabla_resumen: resultados (RMSE) obtenidos para distintas configuraciones de redes, épocas y cantidad de datos de entrenamiento.
