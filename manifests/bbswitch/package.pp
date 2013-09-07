class bumblebee::bbswitch::package {

    package { $bumblebee::bbswitch::packages:
        ensure  => $bumblebee::bbswitch::ensure
    }

}
