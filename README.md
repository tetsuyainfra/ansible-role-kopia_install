Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main/kopia_install.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

- Almost common variable( in defaults/main/kopia_install.yml )
  - kopia_*
  ex1: kopia_install
  ex1: kopia_uninstall

- Detail variable (in defaults/main/kopia_install_details.yml )
  - kopia_install__*
  ex1: kopia_install__become
  ex2: kopia_install__signed_key_url

- Internal variable( in vars/main.yml )
  - __kopia_*
  ex1: __kopia_signed_key_url

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

Testing
-------

Include a description of how to run the tests for the role.

```
./test.sh

# above script includes the following commands
molecule test
molecule test -s install_uninstall
```

folder structure of molecule test scenarios is as follows:
molecule/default  -> Install scenario
molecule/install_uninstall  -> Install and Uninstall scenario

if you want to run a test under the proxy, you just need to set the environment variables http_proxy and https_proxy before running the test.sh script.
I used to set env to mise.local.toml.


License
-------

MIT

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
