FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y socat

# Listen without forever on $PORT waiting for at least some input before initiating connection. Each time the connection is terminated
# wait for a new one.
CMD socat TCP-LISTEN:443,fork TCP:91.107.139.147:443

EXPOSE 443
