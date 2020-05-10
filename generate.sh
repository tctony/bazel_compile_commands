#!/bin/sh
set -e

if [ "$#" -lt 1 ]; then
    echo "Usage: $(basename $0) [options] target"
    exit 1
fi

bazel build --experimental_action_listener=//tools/bazel_compile_commands/actions:generate_compile_commands_listener $*
python3 ./tools/bazel_compile_commands/actions/generate_compile_commands_json.py
exit 0