_bitcoin_command() {
    if [ -z "$bitcoin_network" ]; then
        echo "testnet, mainnet, regtest or signet?"
        read bitcoin_network
    fi

    # if there's a variable called BITCOIN_WALLET, use it
    if [ -n "$BITCOIN_WALLET" ]; then
        bitcoin-cli -$bitcoin_network -rpcwallet=$BITCOIN_WALLET $@
    else
        bitcoin-cli -$bitcoin_network $@
    fi
}

alias bm='bitcoin-cli -mainnet'
alias br='bitcoin-cli -regtest'
alias bt='bitcoin-cli -testnet'
alias bs='bitcoin-cli -signet'
alias b='_bitcoin_command'
alias bn='_bitcoin_command -named'

function bitcoin_wallet_name {
    if [ -z "$BITCOIN_WALLET" ]; then
        echo "Enter wallet name: "
        read BITCOIN_WALLET
    fi
    echo $BITCOIN_WALLET
}
