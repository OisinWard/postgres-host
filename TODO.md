# Create vagrant database

In ansible provisioning do the following

```
$ sudo -u postgres createuser -s $USER
$ createdb
$ psql
```

Task equivalent of "sudo -u postgres createuser -s $USER"

```
- name: Create user {{ ansible_ssh_user }} for postgresql
  become: true
  become_user: postgres
  postgresql_user:
    name: "{{ ansible_ssh_user }}"
    state: present
```

Fails with error

```
TASK [postgres_install : Create user vagrant for postgresql] *******************
fatal: [default]: FAILED! => {"changed": false, "msg": "Failed to import the required Python library (psycopg2) on postgres-host's Python /usr/bin/python3. Please read the module documentation and install it in the appropriate location. If the required library is installed, but Ansible is using the wrong Python interpreter, please consult the documentation on ansible_python_interpreter"}
```

Is resolved with the following commands


```
sudo yum install python3-pip -y
sudo dnf install python3-devel -y
sudo yum install postgresql-devel -y
sudo pip install psycopg2
```

Need a stand alone python set up role
