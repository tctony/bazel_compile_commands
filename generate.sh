#!/bin/sh
set -e

if [ "$#" -lt 1 ]; then
    echo "Usage: $(basename $0) [options] target"
    exit 1
fi

ACTION_LISTENER="//tools/bazel_compile_commands/actions:generate_compile_commands_listener"
if grep -q "^build --$ACTION_LISTENER" .bazelrc
then
OPTION=""
else
OPTION="--experimental_action_listener=$ACTION_LISTENER"
fi
bazel build $OPTION $*

echo "begin to generate\n..."
python3 ./tools/bazel_compile_commands/actions/generate_compile_commands_json.py
echo "done"

exit 0