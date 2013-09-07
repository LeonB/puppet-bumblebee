class bumblebee::bbswitch::config {

    # load bbswitch module on boot
    augeas { '/etc/modules/bbswitch':
        context => '/files/etc/modules',
        onlyif  => 'match "bbswitch" size == 0',
        changes => [
            'ins bbswitch after *[last()]',
            # 'set 01 "/-"',
            # 'set 01/map "/etc/auto.direct"',
        ],
    }

    file { '/etc/modprobe.d/bbswitch.conf':
        owner => 'root',
        group => 'root',
        mode => 0644,
        content => 'options bbswitch load_state=0'
    }

    file { '/etc/modprobe.d/blacklist-nouveau.conf':
        owner => 'root',
        group => 'root',
        mode => 0644,
        content => "blacklist nouveau\nblacklist nvidia"
    }

}
