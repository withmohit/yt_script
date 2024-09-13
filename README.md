# YouTube Downloader Script

This project provides two Bash scripts: `tool` and `toolrm`. The `tool` script creates various commands to easily download audio and video from YouTube, while `toolrm` allows you to remove the generated commands, essentially uninstalling the setup.

## Features

- **`mkp3 <youtube_link>`**: Downloads audio from a YouTube video in `.mp3` format.
- **`mkp4 <youtube_link>`**: Downloads video in standard definition.
- **`mkph <youtube_link>`**: Downloads video in high definition.
- **`toolrm`**: Removes all generated scripts and commands, functioning as an uninstallation tool.

- ## Requirements

- **`wget`**: The script uses `wget` to keep `yt-dlp` updated.

## Installation

1. Clone the repository or download the script files.
2. Give the necessary permissions to the `tool` and `toolrm` scripts:

   ```bash
   chmod 777 tool
   chmod 777 toolrm
   ```

## Usage

1. **Run `tool` to set up the commands**:

   ```bash
   ./tool
   ```

   This will create the commands `mkp3`, `mkp4`, and `mkph`, allowing you to download audio and video from YouTube directly from the terminal.

2. **Download YouTube content**:

   - For downloading audio as MP3:
     ```bash
     mkp3 <youtube_link>
     ```

   - For downloading video (standard definition):
     ```bash
     mkp4 <youtube_link>
     ```

   - For downloading video (high definition):
     ```bash
     mkph <youtube_link>
     ```

3. **Uninstallation**:  
   To remove the scripts and clean up the commands, run the `toolrm` script:

   ```bash
   ./toolrm
   ```
