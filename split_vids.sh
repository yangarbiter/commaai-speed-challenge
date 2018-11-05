mkdir -p /tmp/frames/train
mkdir -p /tmp/frames/test
ffmpeg -i data/train.mp4 -vf fps=20 /tmp/frames/train/%08d.png
ffmpeg -i data/train.mp4 -vf fps=20 /tmp/frames/test/%08d.png
