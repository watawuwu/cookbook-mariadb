default['mariadb']['version'] = "10.0"
# for slow query option
default['mysql']['version'] = "5.6"

# MariaDB doesn't use upstart like vanilla MySQL does.
normal['mysql']['use_upstart'] = false

normal['mysql']['client']['packages'] = %W{mariadb-client libmariadbclient-dev}
normal['mysql']['server']['packages'] = %W{mariadb-server}
