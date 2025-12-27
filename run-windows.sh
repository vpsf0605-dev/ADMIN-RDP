FROM ubuntu:22.04

# Cài QEMU và các tiện ích
RUN apt-get update && apt-get install -y \
    qemu-system-x86 qemu-utils wget unzip \
    && rm -rf /var/lib/apt/lists/*

# Tạo thư mục Windows
RUN mkdir /windows

# Copy script và Autounattend
COPY run-windows.sh /run-windows.sh
COPY Autounattend.xml /Autounattend.xml
RUN chmod +x /run-windows.sh

CMD ["/run-windows.sh"]
