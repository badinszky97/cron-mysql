FROM renskiy/cron

RUN apt update && apt install -y mysql-client
