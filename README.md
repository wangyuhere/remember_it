# Description

Save content by URL to elasticsearch and search it later in the CLI.


# Usage

## Prerequisite

* elasticsearch
* ruby

## Install

```
git clone git@github.com:wangyuhere/remember_it.git
cd remember_it
bundle install
```

## Run

```
rake run
> help
...
> add https://github.com/wangyuhere/remember_it
Added https://github.com/wangyuhere/remember_it [cBFgY6JhTFOSrxOETunyuA]
> search remember_it
> search remember_it
  +------------------------+-------------------------------------------+
  | ID                     | URL                                       |
  +------------------------+-------------------------------------------+
  | cBFgY6JhTFOSrxOETunyuA | https://github.com/wangyuhere/remember_it |
  +------------------------+-------------------------------------------+
Found 1 memory.
> exit
Bye bye!
```
