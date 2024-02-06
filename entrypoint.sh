# It specifies the interpreter that should be used to execute the script

#!/bin/sh 

#checks if the DATABASE variable is set to "postgres". 
# This likely means the script is designed for a PostgreSQL database environment.

if ["$DATABASE" = "postgres"]

#If the condition is true (using PostgreSQL), it enters a waiting loop:
# echo "Waiting for postgres....." displays a message to inform the user.
# while ! nc-z $SQL_HOST $SQL_PORT; do: This loop continuously checks if a connection can be made to the PostgreSQL server using the nc (netcat) command. It checks the host and port specified by the SQL_HOST and SQL_PORT variables.
 # sleep 0.1: If the connection isn't established, it pauses for 0.1 seconds before retrying.
# done: The loop continues until a successful connection is made.
# echo "PostgresSQL started" confirms that PostgreSQL is now available.

then
  echo "Waiting for postgres....."

  while ! nc-z $SQL_HOST $SQL_PORT; do
    sleep 0.1
  
  done

  echo "PostgresSQL started"


fi

# Regardless of the database type, the script then executes these commands:
# python manage.py flush --no-input: This likely clears any existing data in the database, preparing it for new data.
# python manage.py migrate: This applies any pending database migrations, ensuring the database schema aligns with the application model.
python manage.py flush --no-input
python manage.py migrate


# exec "$@": This passes any additional arguments provided when running the script to the shell, allowing for further actions or commands to be executed.
exec "$@"
