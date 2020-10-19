Role Name: mailman3
=========

[![Build Status](https://travis-ci.com/Universidad-de-Costa-Rica/role-mailman3.svg?branch=master)](https://travis-ci.com/Universidad-de-Costa-Rica/role-mailman3)

Install Mailman3 Suite alongside Nginx, Postfix, Postgres and Cerbot on Debian 10

Requirements
------------

- See [`requirements.txt`](requirements.txt)
- **It does not handle firewall or ports**

Role Variables
--------------

- See [`defaults/main.yml`](defaults/main.yml).

Dependencies
------------

- Depends on other Ansible roles: no

Example Playbook
----------------

```yaml
- hosts: mailman3
  vars:
    mailman3_domain: example.com
    # It will install and create a certificate using certbot, its nignx plugin and http validation (Public IP required). If false, it will install a self sign cert
    mailman3_install_certbot: true # install and create certificate
    # secrets, please change them
    mailman3_secret_key: "change_secretkey"
    mailman3_rest_api_pass: "change_api_pass"
    mailman3_archiver_key: "change_archiver_key"
    mailman3_db_pass: "change_db_pass"
    mailman3_web_db_pass: "change_web_db_pass"
    mailman3_web_admin_pass: "change_web_admin_pass"
  roles:
    - ucr.mailman3
```

License
-------

MIT

Author Information
------------------

Job Céspedes Ortiz: jobcespedes@gmail.com
