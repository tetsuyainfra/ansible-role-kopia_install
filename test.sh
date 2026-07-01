#!/bin/sh

echo "http_proxy: ${http_proxy:-}"
echo "https_proxy: ${https_proxy:-}"

set -eux
# -e : Exit immediately if a command exits with a non-zero status.
# -x : Print commands and their arguments as they are executed.
# -u : Treat unset variables as an error when substituting.

molecule test -s default
molecule test -s install_uninstall


set +eux

echo "Tests completed successfully!"
