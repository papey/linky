# Linky

Linky is a [Crystal](https://crystal-lang.org/) url-follower command line tool

## Getting Started

### Prerequisites

- [Crystal](https://crystal-lang.org/)

### Installing

#### Get Linky

##### From source

Clone this repo and run

```sh
mkdir -p bin
crystal build -o bin/linky src/linky.cr
```

### Usage

```sh
./bin/linky --help
```

#### Example

```sh
./bin/linky -u shorturl.at/zMXZ4
🔍 301 - shorturl.at/zMXZ4
        ➜ 302 - https://www.shorturl.at/zMXZ4
        ➜ 301 - https://google.com
        ➜ 200 - https://www.google.com/
```

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

- **Wilfried OLLIVIER** - _Main author_ - [Papey](https://github.com/papey)

## License

[LICENSE](LICENSE) file for details

## Notes

Project name is a reference to [Linky](https://www.enedis.fr/linky-compteur-communicant), a big pile of shit 💩.
