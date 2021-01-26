Using different modules

```
-
    name: 'Execute a script on all web server nodes and start httpd service'
    hosts: web_nodes
    tasks:
        -
            name: 'Update entry into /etc/resolv.conf'
            lineinfile:
                path: /etc/resolv.conf
                line: 'nameserver 10.1.250.10'
        -
            user:
            name: web_user
            uid: 1040
            group: developers
        -
            name: 'Execute a script'
            script: /tmp/install_script.sh
        -
            name: 'Start httpd service'
            service:
                name: httpd
                state: present
```

https://docs.ansible.com/ansible/latest/collections/ansible/builtin/lineinfile_module.html   
https://docs.ansible.com/ansible/2.4/user_module.html   

https://docs.ansible.com/ansible/2.5/modules/service_module.html   
https://docs.ansible.com/ansible/2.4/script_module.html


