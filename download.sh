yt-dlp --config-location ./config.audio.txt | awk "! ( /Downloading video/ || /Downloading webpage/ || /upload date is not in range/ || /has already been recorded in archive/ || /loading playlist/)"
yt-dlp --config-location ./config.best.txt | awk "! ( /Downloading video/ || /Downloading webpage/ || /upload date is not in range/ || /has already been recorded in archive/ || /loading playlist/)"
