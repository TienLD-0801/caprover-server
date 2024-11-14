# Dockerfile
FROM caprover/caprover-edge

# Set environment variables
ENV CAPTAIN_BASE_DIRECTORY=/captain
ENV ACCEPTED_TERMS=true
ENV MAIN_NODE_IP_ADDRESS=127.0.0.1

# Expose the necessary ports
EXPOSE 80 443 3000

# Start the CapRover service
CMD ["captain", "start"]
