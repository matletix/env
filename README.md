## Description
Repository for versioning my linux environment (packages and configuration files).

To deploy the environment locally for your current user, use:
```bash
make install
```
*Warning: deploying the environment overrides your existing configuration files*

By default, symbolic links pointing to the configuration files in the `config_files` directory will be created at the relevant location
in the home folder of the current user. This allows any modification to the versioned configuration files to be reflected
in the git repository.

If you prefer to _copy_ the configuration files to their relevant location instead of creating symlinks to them, use:
```bash
make install SYMLINKS=false
```

*Note: your user must be able to use `sudo`.
Your user password will be asked to perform operations that require privilege escalation.*

## Requirements
[Ansible](https://docs.ansible.com/ansible/latest/index.html) is used to deploy the environment. `python` and `ansible` must be installed on your system.
If you have [`pip`](https://pip.pypa.io/en/stable/), you can install ansible with:
```bash
sudo python -m pip install ansible
```
