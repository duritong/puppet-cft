# modules/rkhunter/manifests/init.pp - manage rkhunter
# Copyright (C) 2007 admin@immerda.ch
# 

#modules_dir { "cft": }

class cft {
        package { 'gamin':
                ensure => present,
        }
        package { 'ruby-fam':
                ensure => present,
                require => Package[gamin],
        }
        package { 'cft':
                ensure => present,
                require => Package[ruby-fam],
        }
}

