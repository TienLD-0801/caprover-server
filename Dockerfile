FROM caprover/caprover-edge

# Tạo thư mục /usr/src/app/captain nếu chưa có
RUN mkdir -p /usr/src/app/captain

# Set environment variables
ENV CAPTAIN_BASE_DIRECTORY=/usr/src/app/captain
ENV ACCEPTED_TERMS=true
ENV MAIN_NODE_IP_ADDRESS=127.0.0.1

# Expose ports
EXPOSE 80 443 3000

# Start CapRover
CMD ["captain", "start"]
