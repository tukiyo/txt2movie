set -eu

# 改行で少し間を開ける
sed "s/$/。/g" ${TXTFILE} > _tmp.txt

date
echo "[convert] txt -> audio"
say --file-format=m4af -f "_tmp.txt" -o "_tmp.m4a"

date
echo "[convert] audio -> video"
ffmpeg -loglevel quiet -loop 1 \
 -i _tmp.png -i _tmp.m4a \
 -af volume=15dB \
 -shortest "_tmp.avi"

mv "_tmp.avi" "【${AUTHR}】 ${TITLE} （青空文庫 - 機械朗読）.avi"

rm _tmp.txt _tmp.png _tmp.m4a

ls *.avi
