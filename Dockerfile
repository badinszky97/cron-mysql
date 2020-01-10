FROM renskiy/cron

COPY entrypoint.sh /root

RUN apt update && apt install -y mysql-client && apt autoremove && apt autoclean
