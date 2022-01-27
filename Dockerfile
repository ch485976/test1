FROM alpine:3.14
WORKDIR /data/app
RUN apk update
RUN apk add python3
RUN apk add coreutils
RUN addgroup -S student && adduser -S inwk -G student
USER inwk
COPY app/welcome.py ./
CMD ["python3", "./welcome.py"]
