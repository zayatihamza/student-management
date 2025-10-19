# Utiliser une image Java légère (Alpine)
FROM eclipse-temurin:17-jdk-alpine

# Créer le dossier pour l'application
WORKDIR /app

# Copier le jar dans l'image
COPY /var/lib/jenkins/workspace/Student-Pipeline/target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port Spring Boot
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
