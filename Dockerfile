ARG PLAUSIBLE_VERSION="stable"

FROM plausible/analytics:$PLAUSIBLE_VERSION

EXPOSE 5000/tcp

CMD ["sh", "-c", "sleep 10 && /entrypoint.sh db createdb && /entrypoint.sh db migrate && /entrypoint.sh db init-admin && /entrypoint.sh run"]
