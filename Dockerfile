FROM archlinux:base

# Synchronize pacman
RUN pacman -Syu --noconfirm

# Install yt-dlp
RUN pacman -Sy --noconfirm yt-dlp

# Run yt-dlp from arch community repo
ENTRYPOINT ["yt-dlp"]
