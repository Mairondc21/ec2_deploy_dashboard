FROM python:3.12

RUN pip install poetry

COPY . /app/app.py

WORKDIR /app/app.py

RUN poetry install

EXPOSE 8501

ENTRYPOINT ["poetry","run", "streamlit", "run", "app.py"]