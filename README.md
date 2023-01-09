# oh-my-zsh-bitcoin-cli

This plugin provides useful aliases to simplify the interaction with `bitcoin-cli`.

To start using it, add the `bitcoin-cli` plugin to your `plugins` array in `~/.zshrc`:

```zsh
plugins=(... bitcoin-cli)
```

## Network selection
```
bm=bitcoin-cli -mainnet
bt=bitcoin-cli -testnet
br=bitcoin-cli -regtest
bs=bitcoin-cli -signet
```

Use `b` to choose one network for the current session.

## Named arguments
```
bn=b -named
```

### Example
```sh
# These commands are equivalent
$ b -named getnewaddress address_type=bech32
tb1qtvr8xan8sl7ru5k55nk7sg8akdhwdn4g5gdf9g
$ bn getnewaddress address_type=bech32
tb1qzk9r7ymhs0ddeuxf23daujz6jjq0g77eudn52e
```

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
