#!/bin/bash

# Download the Airflow Docker Compose file
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.7.2/docker-compose.yaml'

# Create the necessary directories
mkdir -p ./dags ./logs ./plugins ./config

# Set the Airflow user ID
echo -e "AIRFLOW_UID=1000" > .env


##make the script executable 
#chmod +x airflow-setup.sh