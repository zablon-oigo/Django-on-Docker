# Pull base Image
FROM python:3.10.4-slim-buster

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYHTONDONTWRITEBYTECODE 1
ENV PYHTONBUFFERED 1

# Set Work Directory
WORKDIR /app

# Install Dependecies
COPY ./requirements.txt  .
RUN pip install -r requirements.txt

# Copy project
COPY . .

# Copy entrypoint.sh
#COPY ./entrypoint.sh .
#RUN sed -i 's/\r$//g' /app/entrypoint.sh
#RUN chmod +x  /app/entrypoint.prod.sh

# Port
EXPOSE 8000

# run entrypoint.sh
#ENTRYPOINT ["/app/entrypoint.sh"]
