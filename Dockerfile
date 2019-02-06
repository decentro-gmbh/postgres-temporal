# Postgres 10.4 with the temporal_tables extension installed: https://pgxn.org/dist/temporal_tables/
FROM postgres:10.4

# Install python-pip and postgresql-server-dev-10
RUN apt-get update && apt-get install -y \
  python-pip \
  postgresql-server-dev-10

# Install pgxnclient
RUN pip install pgxnclient

# Install temporal_tables extension using pgxn
RUN pgxn install temporal_tables
