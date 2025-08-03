# ---------- STAGE 1: Build the app ----------
FROM gradle:8.5.0-jdk17 AS builder

WORKDIR /app
COPY . .

RUN gradle bootJar --no-daemon

# ---------- STAGE 2: Run the app ----------
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app
COPY --from=builder /app/build/libs/*.jar app.jar

EXPOSE 9900
ENTRYPOINT ["java", "-jar", "app.jar"]
