# Class: bumblebee::bbswitch::params
#
# This class defines default parameters used by the main module class bumblebee
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to bumblebee::bbswitch class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class bumblebee::bbswitch::params {

  ### Application related parameters

  $packages = $::operatingsystem ? {
    default => ['bbswitch-dkms']
  }

  $enabled = true

}
