#!/bin/sh

# TODO: rename this file to something better
# NOTE: this MUST be sourced in *all* user shell instances, interactive or not

hostexec() {
  container_host_exec_cache_dir="$HOME/.cache"
  container_host_exec_cache_dir_file="$container_host_exec_cache_dir/host_dir"

  mkdir -p "$container_host_exec_cache_dir"

  # TODO: remove the `./` from `./container-host-exec`. It's only temporary for development
  CONTAINER_HOST_EXEC_CACHE_DIR_FILE=$container_host_exec_cache_dir_file ./container-host-exec "$@"

  # cleanup
  builtin cd -- "$(cat "$container_host_exec_cache_dir_file")" || exit
  rm -f "$container_host_exec_cache_dir_file"
}
