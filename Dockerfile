# 베이스 이미지 설정: Java 17 JRE만 포함된 아주 가벼운 Linux 이미지 (Alpine 기반)
# 이 이미지는 Spring Boot 실행에 필요한 최소한의 환경만 포함하고 있음
# 이 Dockerfile은 ARM64 아키텍처를 위한 이미지 빌드를 위해 --platform 옵션을 사용
FROM --platform=linux/arm64/v8 eclipse-temurin:17-jre-alpine

# 컨테이너 안에서 작업할 디렉토리 설정 (기본 디렉토리)
WORKDIR /app

# 로컬의 빌드 결과물(JAR 파일)을 컨테이너 이미지 안으로 복사
# 예: build/libs/*.jar → /app/app.jar 로 복사됨
COPY build/libs/*.jar app.jar

# 컨테이너가 실행될 때 자동으로 실행할 명령어 설정
# 즉, java -jar app.jar 명령을 실행하여 Spring Boot 애플리케이션을 시작함
ENTRYPOINT ["java", "-jar", "app.jar"]