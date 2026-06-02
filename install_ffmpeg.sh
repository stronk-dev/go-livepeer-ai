#!/usr/bin/env bash
echo 'WARNING: downloading and executing lpms/install_ffmpeg.sh, use it directly in case of issues'
curl https://raw.githubusercontent.com/stronk-dev/lpms/fab71cd80b2b925296a92c2ad983ebefdcc82958/install_ffmpeg.sh | bash -s $1
