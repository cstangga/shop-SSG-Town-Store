#Base image
FROM amazoncorretto:17

# image meta정보
LABEL maintainer="cstangga<cstangga@naver.com>"

# build시 사용할 변수 선언
ARG JAR_FILE_PATH=/admin/build/libs/*.jar

# 생성할 image의 /디렉토리에 파일 복사
COPY ${JAR_FILE_PATH} app.jar

# container구동시 실행할 명령어
ENTRYPOINT ["java","-jar","/app.jar"]