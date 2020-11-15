## Description
Repository for versioning my linux environment (packages and configuration files).

Deploy the environment locally, for your current user, with :
```bash
make install
```

*Your user must be able to use `sudo`.
Your user password will be asked to perform operations that require privilege escalation.*

## Requirements
[Ansible](https://docs.ansible.com/ansible/latest/index.html) is used to deploy the environment. `python` and `ansible` must be installed on your system.
If you have [`pip`](https://pip.pypa.io/en/stable/), you can install ansible with:
```bash
sudo python -m pip install ansible
```
