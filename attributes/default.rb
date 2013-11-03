default['mariadb']['version'] = "10.0"

# For slow query options.
default['mysql']['version'] = "5.6"

# MariaDB doesn't use upstart like vanilla MySQL does.
normal['mysql']['use_upstart'] = false

# Added tunable options
normal['mysql']['tunable']['myisam_sort_buffer_size'] = "512M"
normal['mysql']['tunable']['general_log'] = "/var/log/mysql/mysql.log"
normal['mysql']['tunable']['slow_query_log'] = "/var/log/mysql/slow.log"
normal['mysql']['tunable']['log_slow_verbosity'] = "query_plan"
normal['mysql']['tunable']['log_slow_admin_statements'] = 1
normal['mysql']['tunable']['report_host'] = "master1"
normal['mysql']['tunable']['log_bin_index'] = "/var/log/mysql/mariadb-bin.index"
normal['mysql']['tunable']['relay_log_info_file'] = "/var/log/mysql/relay-bin.info"
normal['mysql']['tunable']['default_storage_engine'] = "InnoDB"

# Modified package
normal['mysql']['client']['packages'] = %W{mariadb-client libmariadbclient-dev}
normal['mysql']['server']['packages'] = %W{mariadb-server}
