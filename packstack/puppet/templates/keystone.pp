
class {"keystone":
    admin_token => "%(CONFIG_KEYSTONE_ADMIN_TOKEN)s",
    sql_connection => "mysql://keystone_admin:%(CONFIG_KEYSTONE_DB_PW)s@%(CONFIG_MYSQL_HOST)s/keystone",
    token_format => "%(CONFIG_KEYSTONE_TOKEN_FORMAT)s",
}

class {"keystone::roles::admin":
    email => "test@test.com",
    password => "%(CONFIG_KEYSTONE_ADMIN_PW)s",
    admin_tenant => "admin"
}

class {"keystone::endpoint":
    public_address  => "%(CONFIG_KEYSTONE_HOST)s",
    admin_address  => "%(CONFIG_KEYSTONE_HOST)s",
    internal_address  => "%(CONFIG_KEYSTONE_HOST)s",
}
