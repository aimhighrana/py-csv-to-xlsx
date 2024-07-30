FROM public.ecr.aws/lambda/python:3.8

RUN pip install --upgrade pip

# Copy function code
COPY . /var/task/
# COPY __init__.py /var/task/

## Install all required plugin... 
COPY ./requirements.txt .
RUN pip install -r requirements.txt

CMD [ "__init__.handler" ]