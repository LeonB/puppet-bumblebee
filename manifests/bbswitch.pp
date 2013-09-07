class bumblebee::bbswitch(
  $packages  = params_lookup( 'packages' ),
  $enabled   = params_lookup( 'enabled' )
  ) inherits bumblebee::bbswitch::params {

    $ensure = $enabled ? {
      true  => present,
      false => absent
    }

  include bumblebee::bbswitch::package, bumblebee::bbswitch::config
}
