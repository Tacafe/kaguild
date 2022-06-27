# kaguild
「公開鍵(kagi)」に含めたい「技術者の集団(guild)」を管理して、サーバーにログインできる人を限る（「限る人」）ためのツール `kaguild` です。

## 主な機能
- 鍵に含められるメンバーや、チームを管理します
- 特定のチームやメンバーをひとまとめにした、公開鍵のファイル(authorized_keys)を生成、管理します。

## 依存関係
- docker
- docker-compose
- git

## 開発環境(ローカル)の準備と起動
```bash
  # このリポジトリをcloneする
  git clone https://github.com/Tacafe/kaguild.git

  # imageの取得及びbuild
  docker-compose build

  # development databaseの作成
  docker-compose run --rm kaguild rails db:create db:migrate

  # サービスの起動
  docker-compose up -d
```
- 起動
```bash
  docker-compose up -d
```
