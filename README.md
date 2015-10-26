
Development Environment Config
==============================

I use a lot of VMs for development, so getting the development environment setup
can be a bit of a pain. This [ansible](http://ansible.com) playbook will
provision a VM with my common tools, as well as install my dotfiles into the
right places.

Running
-------

To run this config against a vm:

1. Name the vm in ~/.ansible/hosts
2. Run this command from this directory:
```sh
$ ansible-playbook main.yml -l <host>
```

3. After a little wait, you should have an up to date system that has all of my
   tools and dotfiles in place.
