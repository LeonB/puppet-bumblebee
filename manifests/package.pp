class bumblebee::package {

    # The official bumblebee ppa
    apt::ppa { 'ppa:bumblebee/stable': }

    package { $bumblebee::packages:
        ensure  => $bumblebee::ensure,
        require => Apt::Ppa['ppa:bumblebee/stable'],
    }

}
