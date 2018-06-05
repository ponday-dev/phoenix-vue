必須パッケージインストール

```sh
npm install
```

Phoenixプロジェクト生成

```sh
docker-compose run app mix phx.new . --app <app_name> --database mysql --no-brunch
```

DB接続設定
+ server/config/dev.exs
+ server/config/prod.secret.exs

```sh
config :sample, Sample.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "gJwWACGZqaukCjL7",
  database: "sample_dev",
  hostname: "db",
  pool_size: 10
```

DB作成

```sh
docker-compose run app mix ecto.create
```

vue-cliインストール

```sh
npm install -g vue-cli
```

プロジェクト作成

```sh
vue init webpack frontend
```

ビルド＆Phoenixへデプロイ

```sh
./deploy.sh <app_name>_web
```

Phoenix起動

```sh
docker-compose up -d
```

watch

```sh
npm start -- <app_name>_web
```
