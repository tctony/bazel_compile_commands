### How to
1. clone or copy this repo to `${workspaceFolder}/tools/bazel_compile_commands`
2. load dependencies in WORKSPACE 
```
load("//tools/bazel_compile_commands:deps_util.bzl", "bazel_compile_commands_deps")
bazel_compile_commands_deps()
```
3. run `tools/bazel_compile_commands/generate.sh [options] target` under `${workspaceFolder}