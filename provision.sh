#!/usr/bin/env bash

echo "Update the Ubuntu package list"
apt-get update >/dev/null 2>&1

echo "Provision box with basic tools (e.g. make, git, curl, etc)"
apt-get install -y make git curl >/dev/null 2>&1

