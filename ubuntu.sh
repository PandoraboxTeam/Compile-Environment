#!/bin/bash
set -e

#########################################################
#
#   Functions
#
#########################################################
bail() {
    echo 'Error executing command, exiting'
    exit 1
}

exec_cmd_nobail() {
    echo "+ $1"
    bash -c "$1"
}

exec_cmd() {
    exec_cmd_nobail "$1" || bail
}

#########################################################
#
#   Start Install PandoraBox Build Env
#
#########################################################

exec_cmd 'apt-get update -qq'

exec_cmd 'apt-get build-dep -y --force-yes linux'
exec_cmd 'apt-get build-dep -y --force-yes gcc-4.8'

exec_cmd 'apt-get -y --force-yes install subversion'
exec_cmd 'apt-get -y --force-yes install asciidoc'
exec_cmd 'apt-get -y --force-yes install bash'
exec_cmd 'apt-get -y --force-yes install bc'
exec_cmd 'apt-get -y --force-yes install binutils'
exec_cmd 'apt-get -y --force-yes install bzip2'
exec_cmd 'apt-get -y --force-yes install curl'
exec_cmd 'apt-get -y --force-yes install fastjar'
exec_cmd 'apt-get -y --force-yes install flex'
exec_cmd 'apt-get -y --force-yes install git'
exec_cmd 'apt-get -y --force-yes install git-core'
exec_cmd 'apt-get -y --force-yes install gcc'
exec_cmd 'apt-get -y --force-yes install g++'
exec_cmd 'apt-get -y --force-yes install util-linux'
exec_cmd 'apt-get -y --force-yes install gawk'
exec_cmd 'apt-get -y --force-yes install libgtk2.0-dev'
exec_cmd 'apt-get -y --force-yes install libtool'
exec_cmd 'apt-get -y --force-yes install jikespg'
exec_cmd 'apt-get -y --force-yes install zlib1g-dev'
exec_cmd 'apt-get -y --force-yes install make'
exec_cmd 'apt-get -y --force-yes install genisoimage'
exec_cmd 'apt-get -y --force-yes install libncurses5-dev'
exec_cmd 'apt-get -y --force-yes install libssl-dev'
exec_cmd 'apt-get -y --force-yes install patch'
exec_cmd 'apt-get -y --force-yes install perl-modules'
exec_cmd 'apt-get -y --force-yes install rsync'
exec_cmd 'apt-get -y --force-yes install ruby'
exec_cmd 'apt-get -y --force-yes install sdcc'
exec_cmd 'apt-get -y --force-yes install unzip'
exec_cmd 'apt-get -y --force-yes install wget'
exec_cmd 'apt-get -y --force-yes install gettext'
exec_cmd 'apt-get -y --force-yes install xsltproc'

exec_cmd 'apt-get -y --force-yes install autoconf'
exec_cmd 'apt-get -y --force-yes install automake'
exec_cmd 'apt-get -y --force-yes install bcc'
exec_cmd 'apt-get -y --force-yes install bin86'
exec_cmd 'apt-get -y --force-yes install bison'
exec_cmd 'apt-get -y --force-yes install build-essential'
exec_cmd 'apt-get -y --force-yes install gcc-multilib'
exec_cmd 'apt-get -y --force-yes install libz-dev'
exec_cmd 'apt-get -y --force-yes install libbz2-dev'
exec_cmd 'apt-get -y --force-yes install opam'
exec_cmd 'apt-get -y --force-yes install sphinxsearch'
exec_cmd 'apt-get -y --force-yes install sphinx-common'
