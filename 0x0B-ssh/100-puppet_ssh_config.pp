#!/usr/bin/env bash
# Puppet script to create ssh config file
file { '/etc/ssh/ssh_config':
  ensure => present,

content   => "
            #SSH Client Configuration
            host*
            IdentityFile ~/.ssh/school
            PasswordAuthentication no
            ",
}