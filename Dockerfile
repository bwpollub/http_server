# pierwszy etap - kopiowanie kodu do kontenera i instalacja requirements
FROM python:3.10-slim-buster AS builder

# ustawienie informacji o autorze
ARG AUTHOR="Bartłomiej Wójtowicz"

# ustawienie zmiennej z numerem portu
ENV PORT=8080

# skopiowanie plikow zrodlowych
COPY ./app /app

# Ustawienie katalogu w ktorym pracujemy na app
WORKDIR /app

# instalacja bibliotek Python
RUN pip install --no-cache-dir -r requirements.txt

# drugi etap - stworzenie optymalnego obrazu
FROM python:3.10-slim-buster AS runner

# skopiowanie plików z pierwszego etapu
COPY --from=builder /usr/local/lib/python3.10/site-packages/ /usr/local/lib/python3.10/site-packages/
COPY --from=builder /usr/local/bin/ /usr/local/bin/
COPY --from=builder /app /app

ARG AUTHOR="Bartłomiej Wójtowicz"
ENV PORT=8080

RUN adduser --disabled-password --gecos "" serveruser

WORKDIR /app

RUN chown -R serveruser:serveruser /app

USER serveruser
CMD ["python", "http_server.py"]

LABEL maintainer=$AUTHOR
