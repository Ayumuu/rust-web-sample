# rust-web-sample

# プロジェクト作成

## 初期化
```
docker-compose run --rm backend cargo init
```

### とりあえずHello Wordしたければ、ここがわかりやすい。
https://zenn.dev/megane_otoko/scraps/5e3752075448eb



### DB関連はこれがわかりやすい
https://qiita.com/c0ridrew/items/42bcf381766ba224eed7


### .envで環境変数を扱えるようにする
```
docker-compose run --rm backend cargo add dotenv
```

### DB関連
```
docker-compose run --rm backend cargo add diesel --features mysql --features r2d2 
```

### migration実行為にcliを入れる
```
docker-compose run --rm backend cargo install diesel_cli --no-default-features --features mysql
```

### migrations dirを作成
```
docker-compose run --rm backend diesel setup
```

```
Error response from daemon: OCI runtime create failed: container_linux.go:380: starting container process caused: exec: "diesel": executable file not found in $PATH: unknown
ERROR: 1
```

怒られた。。。

```
  Installing /usr/local/cargo/bin/diesel
   Installed package `diesel_cli v1.4.1` (executable `diesel`)
```

```
   root@266d51dc2a6b:/usr/local/cargo/bin# ls
cargo  cargo-clippy  cargo-fmt	cargo-miri  cargo-watch  clippy-driver	rls  rust-gdb  rust-gdbgui  rust-lldb  rustc  rustdoc  rustfmt	rustup
```

何故かいない。

中にはいって直接再インストールしたらいけた。

