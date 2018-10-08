set -eu

# 改行で少し間を開ける
sed "s/$/。/g" ${TXTFILE} > _tmp.txt

echo "[convert] txt -> audio"
say -f "_tmp.txt" -o "_tmp.aiff"

echo "[convert] audio -> video"
ffmpeg -loglevel quiet -loop 1 \
 -i _tmp.png -i _tmp.aiff \
 -af volume=15dB \
 -shortest "_tmp.mp4"

mv "_tmp.mp4" "【${AUTHR}】 ${TITLE} （青空文庫 - 機械朗読）.mp4"

rm _tmp.txt _tmp.png _tmp.aiff

ls *.mp4
