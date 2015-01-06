# vagrant-guestip plugin
This plugin allows obtaining an IP address of a guest machine.
It's compatible with machines started remotely, i.e. by vSphere or AWS providers.

## Installation
    $ vagrant plugin install vagrant-guestip

## Usage
    $ vagrant guestip

## Using with TeamCity
Running the command under JetBrains [TeamCity](https://www.jetbrains.com/teamcity/) build, it creates `VAGRANT_GUESTIP` environment variable which can be referenced by following build scripts.
**Note:** the variable is added by a [service message](https://confluence.jetbrains.com/display/TCD9/Build+Script+Interaction+with+TeamCity). It requires the command and a build script are placed into separate build steps.
