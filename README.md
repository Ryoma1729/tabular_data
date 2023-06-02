# Tabular data

</center>

<div align="center">
    <img alt="python versions" src="https://img.shields.io/badge/python-3.8%20%7C%203.9-blue?color=00adb5">
    <a href="https://github.com/psf/black">
        <img alt="black" src="https://img.shields.io/badge/code%20style-black-000000.svg?color=00adb5">
    </a>
    <a href="https://github.com/PyCQA/flake8">
        <img alt="flake8" src="https://img.shields.io/badge/code%20style-flake8-black?color=00adb5">
    </a>
    <a href="https://pycqa.github.io/isort">
        <img alt="isort" src="https://img.shields.io/badge/%20imports-isort-%231674b1?color=00adb5">
    </a>
    <a href="https://github.com/python/mypy">
        <img alt="mypy" src="https://img.shields.io/badge/typing-mypy-blue?color=00adb5">
    </a>
</div>
<br />

<center>

テーブルデータ用の機械学習パイプラインの構築を目的に作成

## Used libraries

- python3.9
- VSCode(devcontainer.json, setting.json)
- docker
- poetry
- flake8
- black
- isort
- mypy
- mdformat
- pytest
- azure-pipelines
- mkdocs

## Environment

### docker コンテナ ビルド & 起動

CPU 環境用

```bash
docker-compose up -d --build cpu
```

<details><summary>macで以下のエラーが発生した場合</summary>

mac で以下のエラーが出ることがある

```bash
failed to solve with frontend dockerfile.v0: failed to create LLB definition: rpc error: code = Unknown desc = error getting credentials - err: exec: "docker-credential-desktop": executable file not found in $PATH, out: ``
```

その場合は以下の手順で `~/.docker/config.json`を修正すると解決する

- `sudo vi ~/.docker/config.json`でファイルを開く
- `credsStore` -> `credStore`に変更し保存

[https://stackoverflow.com/a/74413229](https://stackoverflow.com/a/74413229)

</details>

GPU 環境用

```bash
docker-compose up -d --build gpu
```

### コンテナにアタッチ

まず `.devcontainer/devcontainer.json`の `service`が作成したコンテナサービス名に設定する
前段で CPU 環境用を起動した場合は `cpu`, GPU 環境用を起動した場合は `gpu`と記載

次に VScode 左下の `><`ボタンより `Open Folder in Container`でコンテナにアクセス

## Appendix

### 全般

[https://github.com/cvpaperchallenge/Ascender](https://github.com/cvpaperchallenge/Ascender)
[https://qiita.com/edge-m/items/846715217fc3dd481a84](https://qiita.com/edge-m/items/846715217fc3dd481a84)
[https://zenn.dev/zenizeni/books/a64578f98450c2](https://zenn.dev/zenizeni/books/a64578f98450c2)
[https://zenn.dev/alivelimb/articles/20220501-python-env](https://zenn.dev/alivelimb/articles/20220501-python-env)
[https://github.com/arrowkato/my_favorite_python_env](https://github.com/arrowkato/my_favorite_python_env)
[https://zenn.dev/jdbtisk/articles/e6ed54b38b6a45](https://zenn.dev/jdbtisk/articles/e6ed54b38b6a45)
[https://qiita.com/ShortArrow/items/f29e4d0df7d836eec770](https://qiita.com/ShortArrow/items/f29e4d0df7d836eec770)

### VScode 拡張機能

[https://qiita.com/yamaguchi2000/items/76060c08764ce4c704f9](https://qiita.com/yamaguchi2000/items/76060c08764ce4c704f9)
[https://qiita.com/papi_tokei/items/c639dc7d1e0f5ad68a74](https://qiita.com/papi_tokei/items/c639dc7d1e0f5ad68a74)
[https://qiita.com/nanato12/items/ddf26487eb30714251c3](https://qiita.com/nanato12/items/ddf26487eb30714251c3)
[https://maasaablog.com/integrated-development-environment/visual-studio-code/923/](https://maasaablog.com/integrated-development-environment/visual-studio-code/923/)

### linter/formatter

[https://qiita.com/sin9270/items/85e2dab4c0144c79987d](https://qiita.com/sin9270/items/85e2dab4c0144c79987d)
[https://qiita.com/fehde/items/723b619013dc86008acc](https://qiita.com/fehde/items/723b619013dc86008acc)

### Azure pipelines

[https://stackoverflow.com/questions/71423949/azure-pipelines-proper-way-to-use-poetry](https://stackoverflow.com/questions/71423949/azure-pipelines-proper-way-to-use-poetry)

### mkdocs

[https://zenn.dev/mebiusbox/articles/81d977a72cee01](https://zenn.dev/mebiusbox/articles/81d977a72cee01)
[https://timvink.github.io/mkdocs-print-site-plugin/](https://timvink.github.io/mkdocs-print-site-plugin/)
