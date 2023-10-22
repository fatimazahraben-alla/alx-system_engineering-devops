#!/usr/bin/env bash
# Puppet script to create ssh config file
file { '/etc/ssh/ssh_config':
  ensure => 'present',

  line   => '
            host*
            PasswordAuthentication no
            IdentityFile ~/.ssh/school
            ',
}