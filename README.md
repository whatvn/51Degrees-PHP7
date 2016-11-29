# Absolute

***This extension is absolute*** because php-cpp introduces great memory leak, newest php-cpp version is not fully ported to php7, it contains many bugs. 
please use my new extension: https://github.com/whatvn/php7-51degrees


# 51Degrees-PHP7

The origin php extension provided by 51Degrees foundation was built on top of swig, which is currently does not support PHP7.
This extension is experimental version, build on top of PHP-CPP, working with PHP7, tested with newest php 7 version. 


# BUILD


Install php-cpp then


```
make
```


# CONFIGURATION

I tried to keep the same configuration with old 51Degrees php extension, so the configuration file is the same (except extention name)


php.ini

```
extension=51Degree-PHP7.so
FiftyOneDegreesPatternV3.data_file=/data/51Degrees-LiteV3.2.dat
FiftyOneDegreesPatternV3.property_list=BrowserName,BrowserVersion,PlatformName,PlatformVersion,DeviceType,IsTablet,IsMobile,ScreenPixelsWidth,ScreenPixelsHeight
FiftyOneDegreesPatternV3.cache_size=20000
FiftyOneDegreesPatternV3.pool_size=25
```


# Usage

Internally this extension use getMatchJson api to parse device information, but I keep the same api interface with old 51Degrees extension.
here is example: 


```php
<?php

$fi = FiftyOneDegreesPatternV3::provider_get();


for ($i=0; $i < 1000000; $i++) {
echo "$i\n";
$match =  $fi->getMatch("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36");
echo $match->getValue("BrowserName");
echo "\n";

echo $match->getValue("PlatformName");
echo "\n";
sleep(0.5);
}

``` 


# Limitation

PHP-CPP haven't been able to work with php with thread-safe enabled (compile with `--enable-maintainer-zts` )
So in case anyone use php with zts enabled, please do not try this extension, and php-cpp until they fix this issue: https://github.com/CopernicaMarketingSoftware/PHP-CPP/issues/266


# CREDITs:

- 51 Degrees libary: https://github.com/51Degrees/Device-Detection
- rapidJson https://github.com/miloyip/rapidjson 
- php-cpp: http://www.php-cpp.com/ 


# LICENSE

As always, do whatever you want ;)
I do this to learn thing only



