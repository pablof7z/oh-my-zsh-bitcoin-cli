# oh-my-zsh-bitcoin-cli

This plugin provides useful aliases to simplify the interaction with `bitcoin-cli`.

To start using it, add the `bitcoin-cli` plugin to your `plugins` array in `~/.zshrc`:

```zsh
plugins=(... bitcoin-cli)
```

## Useful aliases
```
bm=bitcoin-cli -mainnet
bt=bitcoin-cli -testnet
br=bitcoin-cli -regtest
bs=bitcoin-cli -signet
```

Use `b` to choose one network for the current session.

```shell
$ b help # First time running in this session asks which network to use
testnet, mainnet, regtest or signet?
testnet
== Blockchain ==
...
$ b help # Subsequent calls continue to use the same network
== Blockchain ==
...
```

## Authors
* Pablo Fernandez <<p@f7z.io>>
