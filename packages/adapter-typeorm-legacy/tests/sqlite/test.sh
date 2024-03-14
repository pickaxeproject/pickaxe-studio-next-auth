#!/usr/bin/env bash

set -eu

shx rm -f tests/sqlite/dev.db

echo "Started running SQLite tests with default models."
jest tests/sqlite/index.test.ts
echo "Finished running SQLite tests with default models."

shx rm -f tests/sqlite/dev.db

echo "Started running SQLite tests with custom models."
CUSTOM_MODEL=1 jest tests/sqlite/index.custom.test.ts
echo "Finished running SQLite tests with custom models."
