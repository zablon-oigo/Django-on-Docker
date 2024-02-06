# Pull base Image
FROM python:3.11.4-slim-buster

# Set Work Directory
WORKDIR /app

# Set environment variables
ENV PIP_DISABLE_VERSION_CHECK 1
ENV PYHTONDONTWRITEBYTECODE 1
ENV PYHTONBUFFERED 1

# Install Dependecies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .

# Copy entrypoint.sh
COPY ./entrypoint.sh .
RUN sed -i 's/\r$//g' /app/entrypoint.sh
RUN chmod +x  /app/entrpoint.sh

# Port
EXPOSE 8000

# run entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
