#!/bin/bash
docker buildx build -t ricariel/jtl-shop:latest --push --platform=linux/amd64 .
