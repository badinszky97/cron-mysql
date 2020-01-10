FROM renskiy/cron

COPY entrypoint.sh /root

RUN chmod +x /root/entrypoint.sh && apt update && apt install -y mysql-client && apt autoremove && apt autoclean

ENTRYPOINT ["/root/entrypoint.sh"]

CMD ["start-cron"]
