#!/bin/bash
docker buildx build -t ricariel/jtl-shop:5.1.2 --push --build-arg JTL_SHOP_VERSION=shop-v5-1-2 --platform=linux/amd64 .
docker buildx build -t ricariel/jtl-shop:4.6.19 -t ricariel/jtl-shop:latest --push --build-arg JTL_SHOP_VERSION=shop-v4-06-19 --platform=linux/amd64 .
