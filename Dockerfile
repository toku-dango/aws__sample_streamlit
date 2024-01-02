FROM python:3.11

RUN curl -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py && yum update -y
COPY . /app
WORKDIR /app

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["streamlit", "run", "app.py", "--server.port=8080"]

