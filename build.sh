#!/bin/env bash

mkdir -p build && dart compile exe -o build/jw2 bin/jasper_worker_v2.dart
cd build
./jw2
