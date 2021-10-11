FROM apache/airflow:2.1.4-python3.9

# Install any linux packages here (Optional)

USER root

RUN apt-get update -yqq \
    && apt-get install -y vim


# Add any python libraries  (Optional)
#https://airflow.apache.org/docs/apache-airflow/stable/extra-packages-ref.html?highlight=snowflake

USER airflow

RUN pip install \
    'python-dotenv' \
    'apache-airflow-providers-http==2.0.1' \
    'apache-airflow-providers-postgres==2.2.0'


USER airflow
