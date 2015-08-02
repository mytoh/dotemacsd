#!/bin/sh

set -o nounset
set -o errexit

readonly PROGNAME=$(basename $0)
readonly PROGDIR=$(readlink $(dirname $0))
readonly ARGS="${@}"
readonly NARGS="${#}"

env SHELL=/bin/tcsh emacs
