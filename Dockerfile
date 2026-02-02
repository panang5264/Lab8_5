FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-venv lsb-release \
    chromium chromium-driver \
    libnss3 libgconf-2-4 libxi6 libxcursor1 libxss1 \
    libxcomposite1 libasound2 libxrandr2 libatk1.0-0 libgtk-3-0 \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/venv \
    && . /opt/venv/bin/activate \
    && pip install --upgrade pip \
    && pip install --upgrade \
       robotframework \
       robotframework-seleniumlibrary \
       selenium \
       websocket-client \
       virtualenv \
       robotframework-pabot

ENV PATH="/opt/venv/bin:$PATH"

USER jenkins
