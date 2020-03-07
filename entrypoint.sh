#!/bin/sh -l

echo "Running Magento2 PHP CodeSniffer"
composer require --dev magento/magento-coding-standard
vendor/bin/phpcs --config-set installed_paths ../../magento/magento-coding-standard/
vendor/bin/phpcs --ignore=*/vendor/* --standard=Magento2 ./