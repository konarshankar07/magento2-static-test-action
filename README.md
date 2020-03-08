# Magento 2 Static Test Action
Magento 2 Static Test Action is used to run static test for Magento 2 modules and improve the quality of code as per Magento coding standards

## Installation

Add the following configuration in workflow `main.yml` file

```yml
name: Magento 2 Static Test Action
on: [push, pull_request]
jobs:
  build:
    name: shankar/magento2-static-test-action
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repo
        uses: actions/checkout@master

      - name: Magento 2 Static Test
        uses: konarshankar07/magento2-static-test-action@v1.0.0
```

## Example Configuration

Please click on this [link](https://github.com/konarshankar07/magento2-cms-hero-image/blob/master/.github/workflows/main.yml) to find the example configuration