# ldk-lnprototest
This repo uses a LDK Sample node implementation and integrates it with Lnprototest test suite.

## Installation
```
git clone https://github.com/Psycho-Pirate/ldk-sample.git
```

## Usage

### LDK-Sample
```
cd ldk-sample
cargo run <bitcoind-rpc-username>:<bitcoind-rpc-password>@<bitcoind-rpc-host>:<bitcoind-rpc-port> <ldk_storage_directory_path> [<ldk-peer-listening-port>] [<bitcoin-network>] [<announced-node-name>] [<announced-listen-addr>]
```
`bitcoind`'s RPC username and password likely can be found through `cat ~/.bitcoin/.cookie`.

`bitcoin-network`: defaults to `testnet`. Options: `testnet`, `regtest`, and `signet`.

`ldk-peer-listening-port`: defaults to 9735.

`announced-listen-addr` and `announced-node-name`: default to nothing, disabling any public announcements of this node.
`announced-listen-addr` can be set to an IPv4 or IPv6 address to announce that as a publicly-connectable address for this node.
`announced-node-name` can be any string up to 32 bytes in length, representing this node's alias.

### Lnprototest

To test with Lnprototest, you will need:
1. `bitcoind` installed, and in your path.
2. `Lnprototest` repo cloned and in your python path. Use `export PYTHONPATH=LNPROTOTEST_DIRECTORY`.

To install the necessary dependences
```
cd Lnprototest_Testing
pip3 install poetry
poetry install
```
Now we can run the test
```
poetry run pytest LNPROTOTEST_DIRECTORY/tests --runner=ldk_lnprototest.Runner --log-cli-level=DEBUG
```
## License

Licensed under either:

 * Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT License ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.
