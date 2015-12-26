# vagrant-address plugin
This plugin allows obtaining a public IP address of a guest machine.
- compatible with machines started remotely, i.e. by vSphere or AWS providers,
- supports multi-machine environments.

## Installation
    $ vagrant plugin install vagrant-address

## Usage
    $ vagrant address [name]

## Using with TeamCity
Running the command under JetBrains [TeamCity](https://www.jetbrains.com/teamcity/) build, it creates `VAGRANT_ADDRESS` environment variable which can be referenced by following build scripts.

**Note:** the variable is added by a [service message](https://confluence.jetbrains.com/display/TCD9/Build+Script+Interaction+with+TeamCity). It requires the command and a build script are placed into separate build steps.
