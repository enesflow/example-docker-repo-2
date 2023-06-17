# Use the official Ubuntu 20.04 base image
FROM ubuntu:20.04

# Update the package lists and install dependencies
RUN apt-get update && apt-get install -y \
    neofetch

# Run neofetch when the container starts
CMD ["neofetch"]
