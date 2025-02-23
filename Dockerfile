# 베이스 이미지로 cyberbotics/webots를 사용 (필요한 버전 지정)
FROM cyberbotics/webots:latest

# 환경 변수 설정 (필요한 경우 추가)
ENV DEBIAN_FRONTEND=noninteractive

# Webots 컨테이너 내에서 필요한 추가 패키지 설치
RUN apt-get update && \
    apt-get install -y x11-apps && \
    rm -rf /var/lib/apt/lists/*

# 작업 디렉토리 설정 (예: /workspace)
WORKDIR /workspace

# (필요하다면) 프로젝트 파일을 컨테이너에 복사
# COPY . /workspace

# 기본 명령어: Webots 실행
CMD ["webots"]
