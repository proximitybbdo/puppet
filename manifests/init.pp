# -----------------------
# This setup file will install git to enable the machine
# to get the git repo containing all modules
#
# Class: git
#
# This class installs git
# -----------------------

class git {
  package { 'git-core':
    ensure => installed,
  }
}

