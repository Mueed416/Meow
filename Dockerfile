FROM savonet/liquidsoap:v2.1.4

WORKDIR /app
COPY . /app

CMD ["liquidsoap", "radio.liq"]
