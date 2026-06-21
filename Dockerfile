FROM python:3.12-slim

LABEL org.opencontainers.image.title="FortiToolbox"
LABEL org.opencontainers.image.description="Operator's diagnostic toolbox for FortiGate"
LABEL org.opencontainers.image.source="https://github.com/kennithjanderson/fortitoolbox"
LABEL org.opencontainers.image.licenses="MIT"

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY . /app

RUN pip install --no-cache-dir .

EXPOSE 8080

CMD ["fortitoolbox"]
