# DNS Setup

Before first run of `docker-compose up -d` you should initialize the secret storage.
This can be done with the following command:

```bash
mkdir -p secrets
pwgen 42 1 > secrets/db_root_password
pwgen 42 1 > secrets/admin_secret_key 
```
TODO explain:
- [ ] howto create `secrets/admin_sqla_uri`
- [ ] initialize Database:

this could be add to `/etc/pdns/mysql-postinit` of powerdns container
```sql
create database pdna;
create user 'pdna'@'%' IDENTIFIED BY 'PASSWORD';
GRANT ALL PRIVILEGES ON pdna.* TO 'pdna'@'%';
flush privileges;
```

And generate required data storages:

```bash
mkdir -p data/mysql
```
