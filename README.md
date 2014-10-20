# Ansible Role: Apache 2.x

[![Build Status](https://travis-ci.org/Aplyca/ansible-role-apache.svg?branch=master)](https://travis-ci.org/Aplyca/ansible-role-apache)

Ansible Role that installs an configure Apache 2.x on Debian/Ubuntu.

## Requirements

Use hash behavior for variables in ansible.cfg
See example: https://github.com/Aplyca/ansible-role-lamp/blob/master/tests/ansible.cfg
See official docs: http://docs.ansible.com/intro_configuration.html#hash-behaviour

## Installation

Using ansible galaxy:

```bash
ansible-galaxy install mauricios.Apache
```
You can add this role as a dependency forother roles, add the role to the meta/main.yml file of your own role:

```yaml
dependencies:
  - { role: mauricios.Apache }
```

## Role Variables

See default variables: https://github.com/Aplyca/ansible-role-lamp/blob/master/defaults/main.yml

## Dependencies

None.

## Testing

Use Vagrant to test the role:

```bash
cd tests;
vagrant box add ubuntu/trusty64;
vagrant up;
```
You should see an Apache server on http://localhost:8080

## License

MIT / BSD

## Author Information

Mauricio Sánchez from Aplyca SAS (http://www.aplyca.com)