# Assignment 2: CLI App Testing

# Task Description

Use differen Linux distribution containers to check their respective `curl` version. Use two differen terminal windows to start bash in both `centos:7` and `ubuntu:14.04`, using `-it`.
Make use of the `docker container --rm` (or `docker --rm`) option to save the need for explicit cleanup. Ensure `curl` is installed and on latest version for the respective Linux distribution.
* ubuntu: `apt-get update` and `apt-get install curl`
* centos: `yum update curl`

*Hint*: Use `curl --verion` to check the curl version.
