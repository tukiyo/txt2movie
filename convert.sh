set -eu

# 使い方
# 
# 作品のディレクトリまで移動してこのスクリプトを実行してください。 

# 拡張子の.txtを削除
export TXTFILE=${1}
export TITLE=${TXTFILE%.txt}
# カレントディレクトリ名を著者とする
export AUTHR=$(basename "$(pwd)")

sh ../../vendor/txt2png.sh
sh ../../vendor/say.sh
