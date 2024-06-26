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
# Copy entrypoint
COPY ./entrypoint.sh .
RUN  sed -i 's/\r$//g' /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
# Copy project
COPY . .

# run entrypoint.sh
ENTRYPOINT [ "/app/entrypoint.sh" ]

