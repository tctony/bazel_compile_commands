"""Util function to claim dependencies for bazel_compile_commands"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("deps.bzl", "bazel_compile_commands_deps")

def bazel_compile_commands_deps_load():
    for name in bazel_compile_commands_deps:
        maybe(http_archive, name, **deps[name])
