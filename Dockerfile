# Start from the ubuntu image that is smaller but no fancy tools
FROM ubuntu:22.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the script.sh file from this directory to /usr/src/app/ creating /usr/src/app/script.sh
COPY script.sh .

# Alternatively, if we skipped chmod earlier, we can add execution permissions during the build.
# RUN chmod +x script.sh

# Execute a command get curl.
RUN apt-get update

RUN apt-get install -y curl

# When running docker run the command will be ./script.sh
CMD ./script.sh