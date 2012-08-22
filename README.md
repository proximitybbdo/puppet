Proximity Puppet
================

Our puppet modules to setup our dev machines.

Requirements
------------
- Ubuntu linux (for now, we will make it distro-independent later on) with:
  - git
  - sudo rights available

Then clone the repo on your machine (e.g. in your home folder) and symlink 
the `modules` and `manifests` folder.

Note
----
Before the script attempted to setup the machine as a whole for you.
This was not the right approach. Now you have to get up to par with the default
puppet requirements and start from there.
