FROM public.ecr.aws/lambda/python:3.10

RUN mkdir -p /app
COPY ./main.py /app/
COPY mylib/ /app/mylib/
COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
WORKDIR /app
Expose 8080
CMD [ "main.py" ]
ENTRYPOINT [ "python" ]