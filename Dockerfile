# Use the official Ubuntu 20.04 base image
FROM ubuntu:20.04

# Update the package lists and install dependencies
RUN apt-get update && apt-get install -y \
    neofetch \
    stress-ng

# Run neofetch and stress-ng with all available resources when the container starts
CMD bash -c "neofetch && stress-ng --cpu 0 --io 0 --vm 0 --vm-bytes $(awk '/MemAvailable/{printf "%d\n", $2 * 0.9;}' < /proc/meminfo)k --timeout 30s"
