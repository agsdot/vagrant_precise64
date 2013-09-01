#!/usr/bin/env bash

echo "Update the Ubuntu package list"
apt-get update >/dev/null 2>&1

echo "Provision box with basic tools (e.g. curl, git, etc)"
apt-get install -y git curl >/dev/null 2>&1

