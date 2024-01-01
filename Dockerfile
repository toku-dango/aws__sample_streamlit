RUN yum install python3.7 -y && curl -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py && yum update -y
COPY . /app
WORKDIR /app

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
CMD streamlit run src/app.py
EXPOSE 8080