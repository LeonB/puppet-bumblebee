class bumblebee(
  $packages  = params_lookup( 'packages' ),
  $enabled   = params_lookup( 'enabled' )
  ) inherits bumblebee::params {

    $ensure = $enabled ? {
      true  => present,
      false => absent
    }

  include bumblebee::package, bumblebee::config
}
