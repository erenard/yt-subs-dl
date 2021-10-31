youtube-dl --config-location ./config.audio.txt | awk "! ( /Downloading video/ || /Downloading webpage/ || /upload date is not in range/ || /has already been recorded in archive/)"
youtube-dl --config-location ./config.best.txt | awk "! ( /Downloading video/ || /Downloading webpage/ || /upload date is not in range/ || /has already been recorded in archive/)"
