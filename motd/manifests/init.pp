# Class: motd
#
# This module manages the /etc/motd file using a template
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#  include motd
#
# [Remember: No empty lines between comments and class definition]
#DICE to be replaced with cluster
class motd {
  if $kernel == "Linux" {
    file { '/etc/motd':
      ensure  => file,
      backup  => false,
      source => "puppet:///modules/motd/motd.DICE",
    }
  }
}
