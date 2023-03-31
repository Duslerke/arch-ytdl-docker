# arch-ytdl-docker

# Problem
Currently the Manjaro version of yt-dlp is broken for certain sites. The issue has been patched a month ago, however, the new release is not available yet on Manjaro.
It is, however, available on Arch repositories.

Manjaro Linux pacman's packages are retrieved from separate Manjaro mirrors to those of Arch Linux.
It is suggested that distro's mirrors shouldn't be messed with in risk of breaking the local system.

# Solution
The application can be dockerised within a relatively light-weight Arch linux docker container.

# How to use

1. Pull down this repository & cd into it.

2. Build the docker image:
``` sh
make build
```

3. Verify that the container works & contains the correct version of yt-dlp:
``` sh
make verify
```

4. Use the container as such:
``` sh
docker run -v ~/Videos/:/mnt ytdl -f "best" "your_video_url"
```

# Notes:

If a differrent download directory is desired, then the absolute host path needs to be changed. For example, to current directory:
``` sh
docker run -v "$(pwd)":/mnt ytdl -f "best" "your_video_url"
```

Running a command like this may be botthersome, so an alias into your `.bashrc` or `.zshrc` can be added:
``` sh
alias arch-ytdl='docker run -v ~/Videos/:/mnt ytdl'
```
