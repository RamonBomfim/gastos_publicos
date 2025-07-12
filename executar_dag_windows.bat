@echo off
echo Disparando DAG 'extract_diarias_mensal'...
docker exec -it airflow-webserver airflow dags trigger extract_diarias_mensal

echo Aguardando 10 segundos para execucao iniciar...
timeout /t 10 >nul

echo DAG disparada com sucesso.
echo Acompanhe a execucao em http://localhost:8080
pause
