class cft::base {
  package{'gamin':
    ensure => present,
  }
  package{'ruby-fam':
    ensure => present,
    require => Package[gamin],
  }
  package{'cft':
    ensure => present,
    require => Package[ruby-fam],
  }
}
