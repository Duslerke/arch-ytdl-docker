FROM archlinux:base

# Synchronize pacman
RUN pacman -Syu --noconfirm

# Install yt-dlp
RUN pacman -Sy --noconfirm yt-dlp

# Download to mounted directory
WORKDIR /mnt

# Run yt-dlp from arch community repo
ENTRYPOINT ["yt-dlp"]
