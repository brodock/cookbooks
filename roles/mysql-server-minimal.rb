name "mysql-server-minimal"
description "Minimal MySQL setup optimized for 512Mb RAM VPS"
run_list 'recipe[mysql::server]'
default_attributes(
    mysql: {
        tunnable: {
            innodb_buffer_pool_size: '128M',
            key_buffer: '32M',
            max_connection: 50,
            long_query_time: 5
        }
    }
)
