FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

# Create Mountpoint for Backups
RUN mkdir -p /sql/backup

# Create Mountpoint for Scripts
RUN mkdir -p /sql/scripts

RUN chown mssql /sql/backup
RUN chown mssql /sql/scripts

USER mssql

CMD [ "/opt/mssql/bin/permissions_check.sh", "/opt/mssql/bin/sqlservr" ]