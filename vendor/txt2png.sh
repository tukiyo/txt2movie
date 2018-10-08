set -eu

TXT=""
TXT=${TXT}"\n"
TXT=${TXT}"  "${TITLE}
TXT=${TXT}"\n\n"
TXT=${TXT}"  "${AUTHR}
TXT=${TXT}"\n\n              (青空文庫 機械朗読)  \n"

convert -font ../../vendor/ricty.ttf -pointsize 30 \
 label:"${TXT}" \
 _tmp.png
