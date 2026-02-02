FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv lsb-release chromium-driver chromium

RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN pip install --upgrade robotframework robotframework-seleniumlibrary selenium websocket-client virtualenv
USER jenkins
