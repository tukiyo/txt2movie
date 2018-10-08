# txt2movie
青空文庫を動画にする君


## 動作環境

* w3m (homepage -> text)
* imagemagick (text -> image)
* /usr/bin/say (text -> audio)
* ffmpeg (image + audio -> mp4)
* [青空文庫などのテキストデーター](https://www.aozora.gr.jp/access_ranking/)
    * `data/作者名/作品名.txt` に保存してください。

```sh
# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install w3m
brew install imagemagick
brew install ffmpeg
```

## 使い方

* `data/作者名/作品名.txt` という構造にしてください。

```sh
cd "data/宮沢賢治/"
wget -dump https://www.aozora.gr.jp/cards/000148/files/773_14560.html > "雨ニモマケズ.txt"

# 最後の不要な行は、お好みに応じて削除
vim "雨ニモマケズ.txt"

# 変換実施
sh ../../convert.sh "雨ニモマケズ.txt"
```
