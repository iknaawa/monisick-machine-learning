FROM python:3.10-slim-buster

WORKDIR /app

COPY libraryrequirement.txt . 

RUN pip install --upgrade pip  

RUN pip install -r libraryrequirement.txt  

COPY . .  

EXPOSE 8000  

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]  
