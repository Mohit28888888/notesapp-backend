FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY mvnw pom.xml ./
COPY .mvn .mvn
COPY src ./src
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "target/notesapp-0.0.1-SNAPSHOT.jar"]
