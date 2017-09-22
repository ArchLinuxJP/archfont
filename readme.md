# archfont

これは、archlinuxのロゴ及び絵文字を使える合成フォントです。`Google Note Fonts`をベースにしています。

```sh
# フォントをインストール後にはこのように文字化けなしで表示されます
$ cat .bashrc
```

![](https://github.com/archlinuxjp/archfont/img/archfont.png)

## インストール

```sh
$ git clone https://github.com/archlinuxjp/archfont
$ cd archfont
$ mkdir -p ~/.local/share/fonts
$ cp ./archfont.ttf ~/.local/share/fonts
$ fc-cache -fv
```

## 使用したもの

[IcoMoon](https://icomoon.io/)

[Google Noto Fonts](https://www.google.com/get/noto/)

## Docs : Noto CJK

https://www.google.com/get/noto/help/cjk/

## Docs : Powerline Patch

https://github.com/Lokaltog/powerline-fontpatcher

## フォント合成

```sh
$ git clone https://github.com/archlinuxjp/archfont
$ cd archfont

# ダウンロード
$ cd font
$ curl -O https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip \
	-O https://noto-website.storage.googleapis.com/pkgs/NotoColorEmoji-unhinted.zip \
	-O https://noto-website.storage.googleapis.com/pkgs/NotoMono-hinted.zip
$ aunpack-all 

# フォント合成
$ ./archfont.sh

# Powerlineのパッチを当てる
$ https://github.com/Lokaltog/powerline-fontpatcher
$ fontforge -lang=py -script ./powerline-fontpatcher/scripts/powerline-fontpatcher archfont.ttf

# フォントをインストール
$ mkdir -p ~/.local/share/fonts
$ cp archfont.ttf ~/.local/share/fonts
$ fc-cache -fv

# ttf -> woff2に変換
$ pyftsubset archfont.ttf --layout-features='*' --flavor=woff2 --output-file=archfont.woff2
```

※ フォントはこれ以外の調整もしていますので、このスクリプトだけでは生成できません。

## ライセンス

[SIL Open Font License, Version 1.1](https://ja.osdn.net/projects/opensource/wiki/SIL_Open_Font_License_1.1)

