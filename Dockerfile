FROM ubuntu


WORKDIR /app

RUN apt-get update && apt-get install -y openjdk-17-jdk

# Copy the compiled JAR file from the local machine to the container
COPY complete/build/libs/rest-service-0.0.1-SNAPSHOT.jar .

# Expose the port on which the Spring Boot application will run
EXPOSE 8080

# Define the command to run the application when the container starts
CMD ["java", "-jar", "rest-service-0.0.1-SNAPSHOT.jar"]

