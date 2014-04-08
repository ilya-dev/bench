```shell
git clone https://github.com/ilya-dev/bench
cd bench/

composer update

cd bench/
../vendor/bin/zephir compile

cd ..
vendor/bin/phpspec run
```
