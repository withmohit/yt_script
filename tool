#!/bin/bash

# URL of the file to download
file_url="https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp"

# Destination path where you want to save the downloaded file
destination_path="/bin/yt-dlp"

# Use wget to download the file
sudo wget -O "$destination_path" "$file_url"

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Sucess in Importing."
else
    echo "File download failed."
fi

printf "#!/bin/bash\nyt-dlp -x --audio-format mp3 \$1" > mkp3

printf "#!/bin/bash\nyt-dlp -f mp4 \$1" > mkp4

printf "#!/bin/bash\nyt-dlp --format-sort quality \$1" > mkph

sudo chmod +x mkp3 mkph mkp4
sudo chmod 777 /bin/yt-dlp

sudo mv mkp3 mkp4 mkph /bin/
echo "Done...🚀"