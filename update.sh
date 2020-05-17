#!/bin/sh
set -e

echo "begin to update\n..."
python3 ./tools/bazel_compile_commands/actions/generate_compile_commands_json.py
echo "done"

exit 0