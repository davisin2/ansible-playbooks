# ansible-playbooks
This is personal repo created by **Davinder Pal Singh**   

### Setup Details:   
1. Ansible Controller   
   Ubuntu:18.04 based   
   Ansible Installed   
2. Ansible Target 1    
   Ubuntu:18.04 based   
   SSH Installed    
3. Ansible Target 2    
   Ubuntu:18.04 based      
   SSH Installed  

## How to Start:   
```
./start-ansible.sh
```
   
1. Test connectivity through ansible   
```   
docker exec -it ansible_controller /bin/bash   

cd test_project   
vi inventory.txt   
    change IP   

ansible target1 -m ping -i inventory.txt      

For target2 ping will fail      
ansible target2 -m ping -i inventory.txt      
```   
**NOTE**: Ansible creates all group (by default for inventory)    

2. To check available Modules:       
Visit https://docs.ansible.com/      
or   
```
ansible-doc -l   
```

3. Running ansible Playbooks      

```
ansible-playbook playbook.yaml   
ansible-playbook --help       

```
4. Ansible/Ansible-playbook command:   

```
ansible all -m ping -i inventory.txt   

ansible-playbook playbook-pingtest.yaml -i inventory.txt
```

5. 



### Personal Notes:   

change hostname
/etc/hostname
-  ansiblecontroller
- target1
- target2

/etc/hosts
127.0.0.1  localhost ansiblecontroller
::1        localhost ansiblecontroller


docker exec -it ansible_controller /bin/bash
docker exec -it ansible_controller /bin/bash
<!-- cd target/
ssh-keygen -t rsa -b 4096 -f remote_user -->

===============NOT THE RIGHT WAY====================    
Check file: /etc/ansible/ansible.cfg    
host_key_checking = False    
===============NOT THE RIGHT WAY====================    
 