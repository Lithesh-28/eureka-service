# Step 1: Use OpenJDK as base image
FROM openjdk:21-jdk-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy JAR file into container
COPY target/eureka-service-0.0.1-SNAPSHOT.jar eureka-service.jar

# Step 4: Expose the Eureka port
EXPOSE 8761

# Step 5: Run the application
ENTRYPOINT ["java", "-jar", "eureka-service.jar"]
