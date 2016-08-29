FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /opt/app
WORKDIR /opt/app
ADD requirements.txt /opt/app
RUN pip install -r requirements.txt
ADD . /opt/app/
CMD ["python", "/opt/app/times_site/manage.py", "runserver", "0.0.0.0:8000"]
