#!/bin/bash

echo "🔁 Disparando DAG 'extract_diarias_mensal'..."
docker exec -it airflow-webserver airflow dags trigger extract_diarias_mensal

echo "⏳ Aguardando 10 segundos para início da execução..."
sleep 10

echo "✅ DAG disparada com sucesso."
echo "🔍 Acompanhe a execução pelo navegador: http://localhost:8080"
