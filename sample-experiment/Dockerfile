FROM ubuntu:latest

# Update apt-get list, install Python, and install other appropriate dependencies
RUN apt-get update
RUN apt-get install cron
RUN apt-get install -y python3 python3-distutils python3-pip python3-apt
RUN pip3 install pyserial

# Add crontab file
ADD crontab /etc/cron.d/simple-cron

# Copy over application files and grant execution rights
COPY utils.py .
COPY sdi_12_data_collector.py .
COPY sdi_12_data_collector.sh .
COPY soil-data-collect.conf .
RUN chmod +x /sdi_12_data_collector.py
RUN chmod +x /sdi_12_data_collector.sh

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/simple-cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup, this assumes that a shared volume is used to define /data.
CMD cron && tail -f /var/log/cron.log