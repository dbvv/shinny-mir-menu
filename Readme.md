# Opencart starter

## Last Cart Version Tested: 2.3.0.2
If you have OpenCart v3, please go to https://github.com/daniilborovkov/opencartstarter

## Installation

## Development Setup

``` bash
# Clone the repo
$ git clone https://github.com/daniilborovkov/opencartstarter.git
$ cd ./opencartstarter

# Install dependencies via Composer
$ composer install

# Set Environment Variables (variables needed can be found in .env.sample)
$ cp .env.sample .env

# After modifying the Environment Variables for your environment setup OpenCart
$ ./bin/robo setup
```

## Development Workflow

``` bash
# Run PHP Server of OpenCart installation and redirect bash I/O
$ ./bin/robo server &

# Watch for source code changes and copy them to the OpenCart installation
$ ./bin/robo watch
```

## Testing

``` bash
$ ./bin/robo test
```

## Build

``` bash
$ ./bin/robo build
```

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.