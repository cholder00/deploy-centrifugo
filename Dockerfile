FROM centrifugo/centrifugo:v5

COPY config.json /centrifugo/config.json

# Railway provides PORT env variable
ENV CENTRIFUGO_PORT=${PORT:-8000}
ENV CENTRIFUGO_ADDRESS=0.0.0.0

EXPOSE ${PORT:-8000}

ENTRYPOINT ["/centrifugo/centrifugo"]
CMD ["--config=/centrifugo/config.json", "--log_level=info", "--health"]
