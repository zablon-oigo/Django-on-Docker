# Pull base Image
FROM python:3.10.4-slim-buster

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYHTONDONTWRITEBYTECODE 1
ENV PYHTONUNBUFFERED 1

# Set Work Directory
WORKDIR /app

# Install Dependecies
COPY ./requirements.txt  .
RUN pip install -r requirements.txt

# Copy project
COPY . .


