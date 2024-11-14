# Dockerfile
FROM caprover/caprover-edge

# Tạo thư mục cho Captain
RUN mkdir -p /captain

# Set environment variables
ENV CAPTAIN_BASE_DIRECTORY=/captain
ENV ACCEPTED_TERMS=true
ENV MAIN_NODE_IP_ADDRESS=127.0.0.1

# Expose ports
EXPOSE 80 443 3000

# Start CapRover
CMD ["captain", "start"]
