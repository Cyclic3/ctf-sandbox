FROM debian:latest
RUN apt-get update && apt-get install ncat -y && apt-get clean && rm -r /var/lib/apt/lists
ENTRYPOINT ["ncat", "-l", "-p", "6969", "--keep-open", "-e"]
CMD ["/bin/sh"]
