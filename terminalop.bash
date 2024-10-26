54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i frontend-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=frontend -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host frontend-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [frontend-dev.devopspractice.info]

TASK [frontend : Make dnf cache] *************************************************************************************************************************************************************
changed: [frontend-dev.devopspractice.info]

TASK [frontend : module disable nginx -y] ****************************************************************************************************************************************************
changed: [frontend-dev.devopspractice.info]

TASK [frontend : module enable nginx -y] *****************************************************************************************************************************************************
changed: [frontend-dev.devopspractice.info]

TASK [frontend : Install Nginx] **************************************************************************************************************************************************************
changed: [frontend-dev.devopspractice.info]

TASK [frontend : Remove file (delete file)] **************************************************************************************************************************************************
ok: [frontend-dev.devopspractice.info]

TASK [frontend : Create application directory] ***********************************************************************************************************************************************
changed: [frontend-dev.devopspractice.info]

TASK [frontend : Download and extract application content] ***********************************************************************************************************************************
changed: [frontend-dev.devopspractice.info]

TASK [frontend : copy nginx file] ************************************************************************************************************************************************************
ok: [frontend-dev.devopspractice.info]

TASK [frontend : Start Nginx service] ********************************************************************************************************************************************************
changed: [frontend-dev.devopspractice.info]

TASK [frontend : Restart nginx servfice] *****************************************************************************************************************************************************
changed: [frontend-dev.devopspractice.info]

TASK [frontend : Enable service nginx and not touch the state] *******************************************************************************************************************************
changed: [frontend-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************
frontend-dev.devopspractice.info : ok=12   changed=9    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i mongodb-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=mongodb -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host mongodb-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [mongodb-dev.devopspractice.info]

TASK [mongodb : Set a hostname] **************************************************************************************************************************************************************
changed: [mongodb-dev.devopspractice.info]

TASK [mongodb : Copy mongodb repo file] ******************************************************************************************************************************************************
changed: [mongodb-dev.devopspractice.info]

TASK [mongodb : Install MongoDB Server"] *****************************************************************************************************************************************************
changed: [mongodb-dev.devopspractice.info]

TASK [mongodb : Replace Monfodb listen address in conf file] *********************************************************************************************************************************
changed: [mongodb-dev.devopspractice.info]

TASK [mongodb : Start mongodb service] *******************************************************************************************************************************************************
changed: [mongodb-dev.devopspractice.info]

TASK [mongodb : Enable service mongodb and not touch the state] ******************************************************************************************************************************
ok: [mongodb-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************
mongodb-dev.devopspractice.info : ok=7    changed=5    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i catalogue-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=catalogue -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host catalogue-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [catalogue-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for catalogue-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for catalogue-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for catalogue-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
fatal: [catalogue-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "value of state must be one of: reloaded, restarted, started, stopped, got: start"}

PLAY RECAP ***********************************************************************************************************************************************************************************
catalogue-dev.devopspractice.info : ok=13   changed=8    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i catalogue-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=catalogue -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 508 bytes | 254.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   ac8e644..5a4e3af  main       -> origin/main
Updating ac8e644..5a4e3af
Fast-forward
 roles/catalogue/tasks/main.yml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host catalogue-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [catalogue-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for catalogue-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for catalogue-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for catalogue-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
fatal: [catalogue-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "value of state must be one of: reloaded, restarted, started, stopped, got: start"}

PLAY RECAP ***********************************************************************************************************************************************************************************
catalogue-dev.devopspractice.info : ok=13   changed=6    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i catalogue-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=catalogue -e env=dev roboshop-app.yml 
remote: Enumerating objects: 17, done.
remote: Counting objects: 100% (17/17), done.
remote: Compressing objects: 100% (6/6), done.
remote: Total 12 (delta 6), reused 10 (delta 4), pack-reused 0 (from 0)
Unpacking objects: 100% (12/12), 920 bytes | 306.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   5a4e3af..30e8271  main       -> origin/main
Updating 5a4e3af..30e8271
Fast-forward
 roles/catalogue/tasks/main.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host catalogue-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [catalogue-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for catalogue-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for catalogue-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for catalogue-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
fatal: [catalogue-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "value of state must be one of: reloaded, restarted, started, stopped, got: start"}

PLAY RECAP ***********************************************************************************************************************************************************************************
catalogue-dev.devopspractice.info : ok=13   changed=6    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i catalogue-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=catalogue -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host catalogue-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [catalogue-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for catalogue-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for catalogue-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for catalogue-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
fatal: [catalogue-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "value of state must be one of: reloaded, restarted, started, stopped, got: start"}

PLAY RECAP ***********************************************************************************************************************************************************************************
catalogue-dev.devopspractice.info : ok=13   changed=6    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i redis-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=redis -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host redis-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [redis-dev.devopspractice.info]

TASK [redis : Set Prompt] ********************************************************************************************************************************************************************
changed: [redis-dev.devopspractice.info]

TASK [redis : Disable redis Default] *********************************************************************************************************************************************************
changed: [redis-dev.devopspractice.info]

TASK [redis : Enable redis Default] **********************************************************************************************************************************************************
changed: [redis-dev.devopspractice.info]

TASK [redis : Install redis] *****************************************************************************************************************************************************************
changed: [redis-dev.devopspractice.info]

TASK [redis : Replace redis listen address in conf file] *************************************************************************************************************************************
changed: [redis-dev.devopspractice.info]

TASK [redis : Replace redis protected module] ************************************************************************************************************************************************
changed: [redis-dev.devopspractice.info]

TASK [redis : Restart redis service] *********************************************************************************************************************************************************
changed: [redis-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************
redis-dev.devopspractice.info : ok=8    changed=7    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i user-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=user -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host user-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [user-dev.devopspractice.info]

TASK [user : set prompt] *********************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [Load Maven] ****************************************************************************************************************************************************************************
included: common for user-dev.devopspractice.info

TASK [common : Install maven] ****************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Load app Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for user-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
fatal: [user-dev.devopspractice.info]: FAILED! => {"msg": "invalid or malformed argument: 'mvn clean package ; mv target/$app_name}}-1.0.jar user.jar'"}

PLAY RECAP ***********************************************************************************************************************************************************************************
user-dev.devopspractice.info : ok=9    changed=5    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i user-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=user -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 6 (delta 4), reused 6 (delta 4), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 439 bytes | 219.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   30e8271..a7a6808  main       -> origin/main
Updating 30e8271..a7a6808
Fast-forward
 roles/common/tasks/maven.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host user-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [user-dev.devopspractice.info]

TASK [user : set prompt] *********************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [Load Maven] ****************************************************************************************************************************************************************************
ERROR! this task 'community.general.npm' has extra params, which is only allowed in the following modules: ansible.legacy.include_role, ansible.legacy.group_by, ansible.builtin.include, ansible.builtin.shell, ansible.builtin.group_by, ansible.legacy.script, ansible.builtin.script, ansible.windows.win_shell, ansible.legacy.include, ansible.builtin.import_role, ansible.legacy.set_fact, command, ansible.builtin.include_role, ansible.legacy.include_vars, set_fact, include_vars, ansible.windows.win_command, ansible.builtin.win_shell, ansible.builtin.include_tasks, meta, ansible.legacy.include_tasks, ansible.builtin.set_fact, script, win_shell, import_tasks, ansible.legacy.command, ansible.legacy.import_tasks, ansible.builtin.add_host, ansible.legacy.raw, include_role, win_command, raw, shell, ansible.legacy.win_shell, ansible.legacy.meta, ansible.legacy.add_host, ansible.builtin.command, ansible.builtin.import_tasks, ansible.builtin.meta, ansible.builtin.include_vars, include, import_role, ansible.legacy.shell, ansible.legacy.win_command, ansible.legacy.import_role, group_by, add_host, include_tasks, ansible.builtin.raw, ansible.builtin.win_command

The error appears to be in '/home/ec2-user/roboshop-ansible/roles/common/tasks/maven.yml': line 37, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:


- name: Install Maven Dependencies
  ^ here

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i user-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=user -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 6 (delta 4), reused 6 (delta 4), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 444 bytes | 444.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   a7a6808..90beaf0  main       -> origin/main
Updating a7a6808..90beaf0
Fast-forward
 roles/common/tasks/maven.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host user-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [user-dev.devopspractice.info]

TASK [user : set prompt] *********************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [Load Maven] ****************************************************************************************************************************************************************************
included: common for user-dev.devopspractice.info

TASK [common : Install maven] ****************************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Load app Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for user-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
fatal: [user-dev.devopspractice.info]: FAILED! => {"msg": "template error while templating string: unexpected char '$' at 33. String: mvn clean package ; mv target/{{ $app_name}}-1.0.jar {{ app_name}}.jar. unexpected char '$' at 33"}

PLAY RECAP ***********************************************************************************************************************************************************************************
user-dev.devopspractice.info : ok=9    changed=4    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i user-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=user -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 6 (delta 4), reused 6 (delta 4), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 429 bytes | 429.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   90beaf0..efab08d  main       -> origin/main
Updating 90beaf0..efab08d
Fast-forward
 roles/common/tasks/maven.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host user-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [user-dev.devopspractice.info]

TASK [user : set prompt] *********************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [Load Maven] ****************************************************************************************************************************************************************************
included: common for user-dev.devopspractice.info

TASK [common : Install maven] ****************************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Load app Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for user-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
fatal: [user-dev.devopspractice.info]: FAILED! => {"changed": true, "cmd": "mvn clean package ; mv target/user-1.0.jar user.jar", "delta": "0:00:02.946848", "end": "2024-10-26 10:58:00.331021", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 10:57:57.384173", "stderr": "mv: cannot stat 'target/user-1.0.jar': No such file or directory", "stderr_lines": ["mv: cannot stat 'target/user-1.0.jar': No such file or directory"], "stdout": "[INFO] Scanning for projects...\n[INFO] ------------------------------------------------------------------------\n[INFO] BUILD FAILURE\n[INFO] ------------------------------------------------------------------------\n[INFO] Total time:  0.115 s\n[INFO] Finished at: 2024-10-26T10:58:00Z\n[INFO] ------------------------------------------------------------------------\n[ERROR] The goal you specified requires a project to execute but there is no POM in this directory (/app). Please verify you invoked Maven from the correct directory. -> [Help 1]\n[ERROR] \n[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.\n[ERROR] Re-run Maven using the -X switch to enable full debug logging.\n[ERROR] \n[ERROR] For more information about the errors and possible solutions, please read the following articles:\n[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MissingProjectException", "stdout_lines": ["[INFO] Scanning for projects...", "[INFO] ------------------------------------------------------------------------", "[INFO] BUILD FAILURE", "[INFO] ------------------------------------------------------------------------", "[INFO] Total time:  0.115 s", "[INFO] Finished at: 2024-10-26T10:58:00Z", "[INFO] ------------------------------------------------------------------------", "[ERROR] The goal you specified requires a project to execute but there is no POM in this directory (/app). Please verify you invoked Maven from the correct directory. -> [Help 1]", "[ERROR] ", "[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.", "[ERROR] Re-run Maven using the -X switch to enable full debug logging.", "[ERROR] ", "[ERROR] For more information about the errors and possible solutions, please read the following articles:", "[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MissingProjectException"]}

PLAY RECAP ***********************************************************************************************************************************************************************************
user-dev.devopspractice.info : ok=9    changed=4    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i user-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=user -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 6 (delta 4), reused 6 (delta 4), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 620 bytes | 620.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   efab08d..365e05f  main       -> origin/main
Updating efab08d..365e05f
Fast-forward
 roles/common/tasks/maven.yml | 30 ++++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host user-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [user-dev.devopspractice.info]

TASK [user : set prompt] *********************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [Load Maven] ****************************************************************************************************************************************************************************
included: common for user-dev.devopspractice.info

TASK [common : Install Maven] ****************************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for user-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
fatal: [user-dev.devopspractice.info]: FAILED! => {"changed": true, "cmd": "mvn clean package ; mv target/user-1.0.jar user.jar", "delta": "0:00:02.371529", "end": "2024-10-26 11:00:22.459706", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 11:00:20.088177", "stderr": "mv: cannot stat 'target/user-1.0.jar': No such file or directory", "stderr_lines": ["mv: cannot stat 'target/user-1.0.jar': No such file or directory"], "stdout": "[INFO] Scanning for projects...\n[INFO] ------------------------------------------------------------------------\n[INFO] BUILD FAILURE\n[INFO] ------------------------------------------------------------------------\n[INFO] Total time:  0.089 s\n[INFO] Finished at: 2024-10-26T11:00:22Z\n[INFO] ------------------------------------------------------------------------\n[ERROR] The goal you specified requires a project to execute but there is no POM in this directory (/app). Please verify you invoked Maven from the correct directory. -> [Help 1]\n[ERROR] \n[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.\n[ERROR] Re-run Maven using the -X switch to enable full debug logging.\n[ERROR] \n[ERROR] For more information about the errors and possible solutions, please read the following articles:\n[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MissingProjectException", "stdout_lines": ["[INFO] Scanning for projects...", "[INFO] ------------------------------------------------------------------------", "[INFO] BUILD FAILURE", "[INFO] ------------------------------------------------------------------------", "[INFO] Total time:  0.089 s", "[INFO] Finished at: 2024-10-26T11:00:22Z", "[INFO] ------------------------------------------------------------------------", "[ERROR] The goal you specified requires a project to execute but there is no POM in this directory (/app). Please verify you invoked Maven from the correct directory. -> [Help 1]", "[ERROR] ", "[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.", "[ERROR] Re-run Maven using the -X switch to enable full debug logging.", "[ERROR] ", "[ERROR] For more information about the errors and possible solutions, please read the following articles:", "[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MissingProjectException"]}

PLAY RECAP ***********************************************************************************************************************************************************************************
user-dev.devopspractice.info : ok=9    changed=4    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i user-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=user -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 6 (delta 2), reused 6 (delta 2), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 563 bytes | 563.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   365e05f..1f675b0  main       -> origin/main
Updating 365e05f..1f675b0
Fast-forward
 roles/user/tasks/main.yml | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host user-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [user-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for user-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for user-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for user-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [user-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'user.service'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/common/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/user.service\n\t/home/ec2-user/roboshop-ansible/roles/user/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/user/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/user.service\n\t/home/ec2-user/roboshop-ansible/templates/user.service\n\t/home/ec2-user/roboshop-ansible/user.service on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
user-dev.devopspractice.info : ok=12   changed=7    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i user-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=user -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 6 (delta 4), reused 6 (delta 4), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 534 bytes | 53.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   1f675b0..8c61d92  main       -> origin/main
Updating 1f675b0..8c61d92
Fast-forward
 roles/common/tasks/systemd_setup.yml | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host user-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [user-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for user-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for user-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for user-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [user-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'user.service'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/common/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/user.service\n\t/home/ec2-user/roboshop-ansible/roles/user/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/user/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/user.service\n\t/home/ec2-user/roboshop-ansible/templates/user.service\n\t/home/ec2-user/roboshop-ansible/user.service on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
user-dev.devopspractice.info : ok=12   changed=6    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ LS
-bash: LS: command not found

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ ls
README.md  demo.yml  frontend  frontend.yaml  nginx.conf  roboshop-app.yml  roles  testingyaml.yml  variables.yml

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ cd ro
-bash: cd: ro: No such file or directory

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ cd roles/

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ ls
cart  catalogue  common  dispatch  frontend  mongodb  mysql  payment  rabbitmq  redis  shipping  user

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ cd user/

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user ]$ ls
tasks

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user ]$ ls
tasks

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user ]$ cd tasks/

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user/tasks ]$ ls
main.yml  templates

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user/tasks ]$ cd templates/

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user/tasks/templates ]$ ls
user.service

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user/tasks/templates ]$ cat user.service 
[Unit]
Description = User Service
[Service]
User=roboshop
Environment=MONGO=true
Environment=REDIS_URL='redis://redis-{{ env }}.devopspractice.info:6379'
Environment=MONGO_URL="mongodb://mongodb-{{ env }}.devopspractice.info:27017/users"
ExecStart=/bin/node /app/server.js
SyslogIdentifier=user

[Install]
WantedBy=multi-user.target 

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user/tasks/templates ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user/tasks ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user ]$ ll
total 0
drwxr-xr-x 3 root root 39 Oct 26 11:03 tasks

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ ls
cart  catalogue  common  dispatch  frontend  mongodb  mysql  payment  rabbitmq  redis  shipping  user

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ cd user/

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user ]$ ls
tasks

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user ]$ cd tasks/

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user/tasks ]$ ls
main.yml  templates

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user/tasks ]$ cat main.yml 
#- name: set prompt
#  ansible.builtin.shell: set-prompt {{ app_name }}-{{ env }}
#
#- name: Load Maven
#  ansible.builtin.include_role:
#    name: common
#    tasks_from: maven
#
- name: Load NodeJS
  ansible.builtin.include_role:
    name: common
    tasks_from: nodejs
54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user/tasks ]$ ls
main.yml  templates

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user/tasks ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user ]$ ls
tasks

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/user ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ ls
cart  catalogue  common  dispatch  frontend  mongodb  mysql  payment  rabbitmq  redis  shipping  user

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ cd ll
-bash: cd: ll: No such file or directory

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ ls
README.md  demo.yml  frontend  frontend.yaml  nginx.conf  roboshop-app.yml  roles  testingyaml.yml  variables.yml

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ cd roles/

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ ls
cart  catalogue  common  dispatch  frontend  mongodb  mysql  payment  rabbitmq  redis  shipping  user

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ cd common/

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/common ]$ l
-bash: l: command not found

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/common ]$ s
-bash: s: command not found

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/common ]$ ls
tasks

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/common ]$ cd tasks/

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/common/tasks ]$ ls
app_prerequisites.yml  main.yml  maven.yml  nodejs.yml  python.yml  systemd_setup.yml

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/common/tasks ]$ cat systemd_setup.yml 
#- name: Copy the Service File
#  ansible.builtin.templates:
#    src: "{{ app_name }}.service"
#    dest: /etc/systemd/system/{{ app_name }}.service

#- name: Copy the Service File
#  ansible.builtin.template:
#    src: "{{ app_name }}.service"
#    dest: /etc/systemd/system/{{ app_name }}.service
#
#- name: Start Application Service
#  ansible.builtin.systemd_service:
#    name: "{{ app_name }}"
#    state: start
#    enabled: yes
#    #daemon_reload:  yes
#
- name: Copy the Service File
  ansible.builtin.template:
    src: "{{ app_name }}.service"
    dest: /etc/systemd/system/{{ app_name }}.service

- name: Start Application Service
  ansible.builtin.systemd_service:
    name: "{{ app_name }}"
    daemon_reload:  yes
    state: start
    enabled: yes
    
54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/common/tasks ]$ cat systemd_setup.yml 

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/common/tasks ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/common ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ ls
cart  catalogue  common  dispatch  frontend  mongodb  mysql  payment  rabbitmq  redis  shipping  user

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ 



































54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ ls
README.md  demo.yml  frontend  frontend.yaml  nginx.conf  roboshop-app.yml  roles  testingyaml.yml  variables.yml

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i user-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=user -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host user-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [user-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for user-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for user-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for user-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [user-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'user.service'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/common/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/user.service\n\t/home/ec2-user/roboshop-ansible/roles/user/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/user/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/user.service\n\t/home/ec2-user/roboshop-ansible/templates/user.service\n\t/home/ec2-user/roboshop-ansible/user.service on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
user-dev.devopspractice.info : ok=12   changed=6    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i user-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=user -e env=dev roboshop-app.yml 
remote: Enumerating objects: 13, done.
remote: Counting objects: 100% (13/13), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 7 (delta 5), reused 7 (delta 5), pack-reused 0 (from 0)
Unpacking objects: 100% (7/7), 580 bytes | 580.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   8c61d92..dcc5299  main       -> origin/main
Updating 8c61d92..dcc5299
Fast-forward
 roles/common/tasks/python.yml        | 2 +-
 roles/common/tasks/systemd_setup.yml | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host user-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [user-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for user-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for user-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for user-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [user-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'user.service'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/common/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/user.service\n\t/home/ec2-user/roboshop-ansible/roles/user/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/user/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/templates/user.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/user.service\n\t/home/ec2-user/roboshop-ansible/templates/user.service\n\t/home/ec2-user/roboshop-ansible/user.service on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
user-dev.devopspractice.info : ok=12   changed=6    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i user-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=user -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 7 (delta 2), reused 7 (delta 2), pack-reused 0 (from 0)
Unpacking objects: 100% (7/7), 704 bytes | 352.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   dcc5299..12a52c3  main       -> origin/main
Updating dcc5299..12a52c3
Fast-forward
 roles/user/{tasks => }/templates/user.service | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)
 rename roles/user/{tasks => }/templates/user.service (91%)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host user-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [user-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for user-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for user-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [user-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for user-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
changed: [user-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************
user-dev.devopspractice.info : ok=14   changed=8    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i catalogue-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=catalogue -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host catalogue-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [catalogue-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for catalogue-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for catalogue-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for catalogue-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [catalogue : Copy MongoDB repo file] ****************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [catalogue : Install MongoDB Client] ****************************************************************************************************************************************************
fatal: [catalogue-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Unsupported parameters for (ansible.legacy.dnf) module: enabled. Supported parameters include: allow_downgrade, allowerasing, autoremove, best, bugfix, cacheonly, conf_file, disable_excludes, disable_gpg_check, disable_plugin, disablerepo, download_dir, download_only, enable_plugin, enablerepo, exclude, install_repoquery, install_weak_deps, installroot, list, lock_timeout, name, nobest, releasever, security, skip_broken, sslverify, state, update_cache, update_only, use_backend, validate_certs (expire-cache, pkg)."}

PLAY RECAP ***********************************************************************************************************************************************************************************
catalogue-dev.devopspractice.info : ok=15   changed=8    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i catalogue-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=catalogue -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 489 bytes | 244.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   12a52c3..479b123  main       -> origin/main
Updating 12a52c3..479b123
Fast-forward
 roles/catalogue/tasks/main.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host catalogue-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [catalogue-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for catalogue-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for catalogue-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for catalogue-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [catalogue : Copy MongoDB repo file] ****************************************************************************************************************************************************
ok: [catalogue-dev.devopspractice.info]

TASK [catalogue : Install MongoDB Client] ****************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [catalogue : Load Master Data] **********************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [catalogue : Restart service daemon_reload] *********************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

TASK [catalogue : Start Catalogue Service] ***************************************************************************************************************************************************
changed: [catalogue-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************
catalogue-dev.devopspractice.info : ok=19   changed=11   unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i cart-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=cart -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host cart-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [cart-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for cart-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for cart-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
ok: [cart-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for cart-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [cart-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'cart.service'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/common/templates/cart.service\n\t/home/ec2-user/roboshop-ansible/roles/common/cart.service\n\t/home/ec2-user/roboshop-ansible/roles/cart/templates/cart.service\n\t/home/ec2-user/roboshop-ansible/roles/cart/cart.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/templates/cart.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/cart.service\n\t/home/ec2-user/roboshop-ansible/templates/cart.service\n\t/home/ec2-user/roboshop-ansible/cart.service on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
cart-dev.devopspractice.info : ok=12   changed=7    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i cart-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=cart -e env=dev roboshop-app.yml 
remote: Enumerating objects: 9, done.
remote: Counting objects: 100% (9/9), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 5 (delta 2), reused 5 (delta 2), pack-reused 0 (from 0)
Unpacking objects: 100% (5/5), 414 bytes | 414.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   479b123..9ba0737  main       -> origin/main
Updating 479b123..9ba0737
Fast-forward
 roles/cart/{tasks => }/templates/cart.service | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename roles/cart/{tasks => }/templates/cart.service (100%)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host cart-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [cart-dev.devopspractice.info]

TASK [Load NodeJS] ***************************************************************************************************************************************************************************
included: common for cart-dev.devopspractice.info

TASK [common : Disable Default NodeJS] *******************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Enable NodeJS 20] *************************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Install NodeJS] ***************************************************************************************************************************************************************
ok: [cart-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for cart-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [cart-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Install NodeJS Dependencies] **************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for cart-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
changed: [cart-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************
cart-dev.devopspractice.info : ok=14   changed=8    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i mysqldevopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=mysql -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
fatal: [mysqldevopspractice.info]: UNREACHABLE! => {"changed": false, "msg": "Failed to connect to the host via ssh: ssh: Could not resolve hostname mysqldevopspractice.info: Name or service not known", "unreachable": true}

PLAY RECAP ***********************************************************************************************************************************************************************************
mysqldevopspractice.info   : ok=0    changed=0    unreachable=1    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i mysql-devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=mysql -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
fatal: [mysql-devopspractice.info]: UNREACHABLE! => {"changed": false, "msg": "Failed to connect to the host via ssh: ssh: Could not resolve hostname mysql-devopspractice.info: Name or service not known", "unreachable": true}

PLAY RECAP ***********************************************************************************************************************************************************************************
mysql-devopspractice.info  : ok=0    changed=0    unreachable=1    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i mysql-devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=mysql -e env=dev roboshop-app.yml 

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i mysql-devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=mysql -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
fatal: [mysql-devopspractice.info]: UNREACHABLE! => {"changed": false, "msg": "Failed to connect to the host via ssh: ssh: Could not resolve hostname mysql-devopspractice.info: Name or service not known", "unreachable": true}

PLAY RECAP ***********************************************************************************************************************************************************************************
mysql-devopspractice.info  : ok=0    changed=0    unreachable=1    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i mysql-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=mysql -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host mysql-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [mysql-dev.devopspractice.info]

TASK [mysql : Set Prompt] ********************************************************************************************************************************************************************
changed: [mysql-dev.devopspractice.info]

TASK [mysql : dnf make cache] ****************************************************************************************************************************************************************
changed: [mysql-dev.devopspractice.info]

TASK [mysql : Install mysql-server] **********************************************************************************************************************************************************
changed: [mysql-dev.devopspractice.info]

TASK [mysql : Start mysql-server service] ****************************************************************************************************************************************************
changed: [mysql-dev.devopspractice.info]

TASK [mysql : setup mysql Password] **********************************************************************************************************************************************************
changed: [mysql-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************
mysql-dev.devopspractice.info : ok=6    changed=5    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i shipping-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=shipping -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host shipping-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [shipping-dev.devopspractice.info]

TASK [shipping : set prompt] *****************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [load maven] ****************************************************************************************************************************************************************************
included: common for shipping-dev.devopspractice.info

TASK [common : Install Maven] ****************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for shipping-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for shipping-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [shipping-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'shipping.service'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/common/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/common/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/shipping/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/shipping/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/shipping.service\n\t/home/ec2-user/roboshop-ansible/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/shipping.service on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
shipping-dev.devopspractice.info : ok=11   changed=6    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i shipping-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=shipping -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 7 (delta 2), reused 7 (delta 2), pack-reused 0 (from 0)
Unpacking objects: 100% (7/7), 709 bytes | 709.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   9ba0737..c6d1f60  main       -> origin/main
Updating 9ba0737..c6d1f60
Fast-forward
 roles/shipping/{tasks/templates/shipping.service => templates/shipping.service } | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename roles/shipping/{tasks/templates/shipping.service => templates/shipping.service } (100%)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host shipping-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [shipping-dev.devopspractice.info]

TASK [shipping : set prompt] *****************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [load maven] ****************************************************************************************************************************************************************************
included: common for shipping-dev.devopspractice.info

TASK [common : Install Maven] ****************************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for shipping-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for shipping-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [shipping-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'shipping.service'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/common/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/common/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/shipping/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/shipping/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/shipping.service\n\t/home/ec2-user/roboshop-ansible/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/shipping.service on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
shipping-dev.devopspractice.info : ok=11   changed=5    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull
Already up to date.

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull
Already up to date.

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i shipping-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=shipping -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host shipping-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [shipping-dev.devopspractice.info]

TASK [shipping : set prompt] *****************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [load maven] ****************************************************************************************************************************************************************************
included: common for shipping-dev.devopspractice.info

TASK [common : Install Maven] ****************************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for shipping-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for shipping-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [shipping-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'shipping.service'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/common/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/common/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/shipping/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/shipping/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/roles/common/tasks/shipping.service\n\t/home/ec2-user/roboshop-ansible/templates/shipping.service\n\t/home/ec2-user/roboshop-ansible/shipping.service on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
shipping-dev.devopspractice.info : ok=11   changed=5    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ ls
README.md  demo.yml  frontend  frontend.yaml  nginx.conf  roboshop-app.yml  roles  testingyaml.yml  variables.yml

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ cd roles/shipping/

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/shipping ]$ ls
tasks  templates

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/shipping ]$ ll templates/
total 4
-rw-r--r-- 1 root root 289 Oct 26 12:08 'shipping.service '

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles/shipping ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible/roles ]$ cd ..

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ ls
README.md  demo.yml  frontend  frontend.yaml  nginx.conf  roboshop-app.yml  roles  testingyaml.yml  variables.yml

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i shipping-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=shipping -e env=dev roboshop-app.yml 
remote: Enumerating objects: 9, done.
remote: Counting objects: 100% (9/9), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 5 (delta 2), reused 5 (delta 2), pack-reused 0 (from 0)
Unpacking objects: 100% (5/5), 446 bytes | 446.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   c6d1f60..f05ece1  main       -> origin/main
Updating c6d1f60..f05ece1
Fast-forward
 roles/shipping/templates/{shipping.service  => shipping.service} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename roles/shipping/templates/{shipping.service  => shipping.service} (100%)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host shipping-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [shipping-dev.devopspractice.info]

TASK [shipping : set prompt] *****************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [load maven] ****************************************************************************************************************************************************************************
included: common for shipping-dev.devopspractice.info

TASK [common : Install Maven] ****************************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for shipping-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for shipping-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [shipping : Install mysql client] *******************************************************************************************************************************************************
fatal: [shipping-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Unsupported parameters for (ansible.legacy.dnf) module: nmae. Supported parameters include: allow_downgrade, allowerasing, autoremove, best, bugfix, cacheonly, conf_file, disable_excludes, disable_gpg_check, disable_plugin, disablerepo, download_dir, download_only, enable_plugin, enablerepo, exclude, install_repoquery, install_weak_deps, installroot, list, lock_timeout, name, nobest, releasever, security, skip_broken, sslverify, state, update_cache, update_only, use_backend, validate_certs (expire-cache, pkg)."}

PLAY RECAP ***********************************************************************************************************************************************************************************
shipping-dev.devopspractice.info : ok=13   changed=7    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i shipping-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=shipping -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 476 bytes | 476.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   f05ece1..3d734e9  main       -> origin/main
Updating f05ece1..3d734e9
Fast-forward
 roles/shipping/tasks/main.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host shipping-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [shipping-dev.devopspractice.info]

TASK [shipping : set prompt] *****************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [load maven] ****************************************************************************************************************************************************************************
included: common for shipping-dev.devopspractice.info

TASK [common : Install Maven] ****************************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for shipping-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for shipping-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [shipping : Install mysql client] *******************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [shipping : load swl file] **************************************************************************************************************************************************************
fatal: [shipping-dev.devopspractice.info]: FAILED! => {"msg": "Invalid data passed to 'loop', it requires a list, got this instead: -schema -app-user -master-data. Hint: If you passed a list/dict of just one element, try adding wantlist=True to your lookup invocation or use q/query instead of lookup."}

PLAY RECAP ***********************************************************************************************************************************************************************************
shipping-dev.devopspractice.info : ok=14   changed=7    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i shipping-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=shipping -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 497 bytes | 497.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   3d734e9..d6011d5  main       -> origin/main
Updating 3d734e9..d6011d5
Fast-forward
 roles/shipping/tasks/main.yml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host shipping-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [shipping-dev.devopspractice.info]

TASK [shipping : set prompt] *****************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [load maven] ****************************************************************************************************************************************************************************
included: common for shipping-dev.devopspractice.info

TASK [common : Install Maven] ****************************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for shipping-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for shipping-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [shipping : Install mysql client] *******************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [shipping : load swl file] **************************************************************************************************************************************************************
failed: [shipping-dev.devopspractice.info] (item=schema) => {"ansible_loop_var": "item", "changed": true, "cmd": "mysql -h mysql-dev.devopspractice.info -uroot -pRoboShop@1 < /app/db/schema.sql", "delta": "0:00:00.172091", "end": "2024-10-26 12:19:17.827582", "item": "schema", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 12:19:17.655491", "stderr": "mysql: [Warning] Using a password on the command line interface can be insecure.\nERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)", "stderr_lines": ["mysql: [Warning] Using a password on the command line interface can be insecure.", "ERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)"], "stdout": "", "stdout_lines": []}
failed: [shipping-dev.devopspractice.info] (item=app-user) => {"ansible_loop_var": "item", "changed": true, "cmd": "mysql -h mysql-dev.devopspractice.info -uroot -pRoboShop@1 < /app/db/app-user.sql", "delta": "0:00:00.182979", "end": "2024-10-26 12:19:20.891847", "item": "app-user", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 12:19:20.708868", "stderr": "mysql: [Warning] Using a password on the command line interface can be insecure.\nERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)", "stderr_lines": ["mysql: [Warning] Using a password on the command line interface can be insecure.", "ERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)"], "stdout": "", "stdout_lines": []}
failed: [shipping-dev.devopspractice.info] (item=master-data) => {"ansible_loop_var": "item", "changed": true, "cmd": "mysql -h mysql-dev.devopspractice.info -uroot -pRoboShop@1 < /app/db/master-data.sql", "delta": "0:00:00.193022", "end": "2024-10-26 12:19:24.202184", "item": "master-data", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 12:19:24.009162", "stderr": "mysql: [Warning] Using a password on the command line interface can be insecure.\nERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)", "stderr_lines": ["mysql: [Warning] Using a password on the command line interface can be insecure.", "ERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)"], "stdout": "", "stdout_lines": []}

PLAY RECAP ***********************************************************************************************************************************************************************************
shipping-dev.devopspractice.info : ok=14   changed=6    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i shipping-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=shipping -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 526 bytes | 526.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   d6011d5..277a788  main       -> origin/main
Updating d6011d5..277a788
Fast-forward
 roles/shipping/templates/shipping.service | 2 ++
 1 file changed, 2 insertions(+)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host shipping-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [shipping-dev.devopspractice.info]

TASK [shipping : set prompt] *****************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [load maven] ****************************************************************************************************************************************************************************
included: common for shipping-dev.devopspractice.info

TASK [common : Install Maven] ****************************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for shipping-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for shipping-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [shipping : Install mysql client] *******************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [shipping : load swl file] **************************************************************************************************************************************************************
failed: [shipping-dev.devopspractice.info] (item=schema) => {"ansible_loop_var": "item", "changed": true, "cmd": "mysql -h mysql-dev.devopspractice.info -uroot -pRoboShop@1 < /app/db/schema.sql", "delta": "0:00:00.234307", "end": "2024-10-26 12:26:55.198770", "item": "schema", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 12:26:54.964463", "stderr": "mysql: [Warning] Using a password on the command line interface can be insecure.\nERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)", "stderr_lines": ["mysql: [Warning] Using a password on the command line interface can be insecure.", "ERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)"], "stdout": "", "stdout_lines": []}
failed: [shipping-dev.devopspractice.info] (item=app-user) => {"ansible_loop_var": "item", "changed": true, "cmd": "mysql -h mysql-dev.devopspractice.info -uroot -pRoboShop@1 < /app/db/app-user.sql", "delta": "0:00:00.191734", "end": "2024-10-26 12:26:58.225784", "item": "app-user", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 12:26:58.034050", "stderr": "mysql: [Warning] Using a password on the command line interface can be insecure.\nERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)", "stderr_lines": ["mysql: [Warning] Using a password on the command line interface can be insecure.", "ERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)"], "stdout": "", "stdout_lines": []}
failed: [shipping-dev.devopspractice.info] (item=master-data) => {"ansible_loop_var": "item", "changed": true, "cmd": "mysql -h mysql-dev.devopspractice.info -uroot -pRoboShop@1 < /app/db/master-data.sql", "delta": "0:00:00.219091", "end": "2024-10-26 12:27:01.648614", "item": "master-data", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 12:27:01.429523", "stderr": "mysql: [Warning] Using a password on the command line interface can be insecure.\nERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)", "stderr_lines": ["mysql: [Warning] Using a password on the command line interface can be insecure.", "ERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)"], "stdout": "", "stdout_lines": []}

PLAY RECAP ***********************************************************************************************************************************************************************************
shipping-dev.devopspractice.info : ok=14   changed=7    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i shipping-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=shipping -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host shipping-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [shipping-dev.devopspractice.info]

TASK [shipping : set prompt] *****************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [load maven] ****************************************************************************************************************************************************************************
included: common for shipping-dev.devopspractice.info

TASK [common : Install Maven] ****************************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for shipping-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for shipping-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [shipping : Install mysql client] *******************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [shipping : load swl file] **************************************************************************************************************************************************************
failed: [shipping-dev.devopspractice.info] (item=schema) => {"ansible_loop_var": "item", "changed": true, "cmd": "mysql -h mysql-dev.devopspractice.info -uroot -pRoboShop@1 < /app/db/schema.sql", "delta": "0:00:00.164225", "end": "2024-10-26 12:28:29.804863", "item": "schema", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 12:28:29.640638", "stderr": "mysql: [Warning] Using a password on the command line interface can be insecure.\nERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)", "stderr_lines": ["mysql: [Warning] Using a password on the command line interface can be insecure.", "ERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)"], "stdout": "", "stdout_lines": []}
failed: [shipping-dev.devopspractice.info] (item=app-user) => {"ansible_loop_var": "item", "changed": true, "cmd": "mysql -h mysql-dev.devopspractice.info -uroot -pRoboShop@1 < /app/db/app-user.sql", "delta": "0:00:00.154066", "end": "2024-10-26 12:28:32.748889", "item": "app-user", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 12:28:32.594823", "stderr": "mysql: [Warning] Using a password on the command line interface can be insecure.\nERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)", "stderr_lines": ["mysql: [Warning] Using a password on the command line interface can be insecure.", "ERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)"], "stdout": "", "stdout_lines": []}
failed: [shipping-dev.devopspractice.info] (item=master-data) => {"ansible_loop_var": "item", "changed": true, "cmd": "mysql -h mysql-dev.devopspractice.info -uroot -pRoboShop@1 < /app/db/master-data.sql", "delta": "0:00:00.225797", "end": "2024-10-26 12:28:35.837862", "item": "master-data", "msg": "non-zero return code", "rc": 1, "start": "2024-10-26 12:28:35.612065", "stderr": "mysql: [Warning] Using a password on the command line interface can be insecure.\nERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)", "stderr_lines": ["mysql: [Warning] Using a password on the command line interface can be insecure.", "ERROR 1045 (28000): Access denied for user 'root'@'ip-172-31-40-36.ec2.internal' (using password: YES)"], "stdout": "", "stdout_lines": []}

PLAY RECAP ***********************************************************************************************************************************************************************************
shipping-dev.devopspractice.info : ok=14   changed=6    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i shipping-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=shipping -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 482 bytes | 482.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   277a788..8e125a3  main       -> origin/main
Updating 277a788..8e125a3
Fast-forward
 roles/shipping/tasks/main.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host shipping-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [shipping-dev.devopspractice.info]

TASK [shipping : set prompt] *****************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [load maven] ****************************************************************************************************************************************************************************
included: common for shipping-dev.devopspractice.info

TASK [common : Install Maven] ****************************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Load App Prerequisites] *******************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for shipping-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : Install Maven Dependencies] ***************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [common : SystemD setup] ****************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for shipping-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

TASK [shipping : Install mysql client] *******************************************************************************************************************************************************
ok: [shipping-dev.devopspractice.info]

TASK [shipping : load swl file] **************************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info] => (item=schema)
changed: [shipping-dev.devopspractice.info] => (item=app-user)
changed: [shipping-dev.devopspractice.info] => (item=master-data)

TASK [shipping : Restart Shipping] ***********************************************************************************************************************************************************
changed: [shipping-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************
shipping-dev.devopspractice.info : ok=16   changed=8    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i rabbitmq-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=rabbitmq -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host rabbitmq-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Set Prompt] *****************************************************************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Copy rabbitmq repo file] ****************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [rabbitmq-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'rabbitmq.repo'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/files/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/tasks/files/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/tasks/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/files/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/rabbitmq.repo on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
rabbitmq-dev.devopspractice.info : ok=2    changed=1    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i rabbitmq-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=rabbitmq -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 7 (delta 2), reused 7 (delta 2), pack-reused 0 (from 0)
Unpacking objects: 100% (7/7), 723 bytes | 723.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   8e125a3..78801e0  main       -> origin/main
Updating 8e125a3..78801e0
Fast-forward
 roles/rabbitmq/{tasks/templates/rabbitmq.repo => templates/rabbitmq.service} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename roles/rabbitmq/{tasks/templates/rabbitmq.repo => templates/rabbitmq.service} (100%)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host rabbitmq-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Set Prompt] *****************************************************************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Copy rabbitmq repo file] ****************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [rabbitmq-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'rabbitmq.repo'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/files/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/tasks/files/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/tasks/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/files/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/rabbitmq.repo on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
rabbitmq-dev.devopspractice.info : ok=2    changed=1    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i rabbitmq-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=rabbitmq -e env=dev roboshop-app.yml 
remote: Enumerating objects: 18, done.
remote: Counting objects: 100% (18/18), done.
remote: Compressing objects: 100% (7/7), done.
remote: Total 12 (delta 4), reused 10 (delta 2), pack-reused 0 (from 0)
Unpacking objects: 100% (12/12), 1.07 KiB | 1.07 MiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   78801e0..6f591a2  main       -> origin/main
Updating 78801e0..6f591a2
Fast-forward
 roles/payment/{tasks/templates/payment.servoce => templates/payment.service} | 2 --
 roles/rabbitmq/templates/{rabbitmq.service => rabbitmq.repo}                 | 0
 2 files changed, 2 deletions(-)
 rename roles/payment/{tasks/templates/payment.servoce => templates/payment.service} (93%)
 rename roles/rabbitmq/templates/{rabbitmq.service => rabbitmq.repo} (100%)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host rabbitmq-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Set Prompt] *****************************************************************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Copy rabbitmq repo file] ****************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [rabbitmq-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'rabbitmq.repo'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/files/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/tasks/files/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/roles/rabbitmq/tasks/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/files/rabbitmq.repo\n\t/home/ec2-user/roboshop-ansible/rabbitmq.repo on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************
rabbitmq-dev.devopspractice.info : ok=2    changed=1    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i rabbitmq-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=rabbitmq -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 462 bytes | 231.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   6f591a2..8ae898f  main       -> origin/main
Updating 6f591a2..8ae898f
Fast-forward
 roles/rabbitmq/tasks/main.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host rabbitmq-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Set Prompt] *****************************************************************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Copy rabbitmq repo file] ****************************************************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Install RabbitMQ Server"] ***************************************************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Enable service RabbitMQ- Server and not touch the state] ********************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Start rabbitmq service] *****************************************************************************************************************************************************
fatal: [rabbitmq-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "value of state must be one of: reloaded, restarted, started, stopped, got: start"}

PLAY RECAP ***********************************************************************************************************************************************************************************
rabbitmq-dev.devopspractice.info : ok=5    changed=4    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i rabbitmq-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=rabbitmq -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 453 bytes | 151.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   8ae898f..71ff17c  main       -> origin/main
Updating 8ae898f..71ff17c
Fast-forward
 roles/rabbitmq/tasks/main.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host rabbitmq-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Set Prompt] *****************************************************************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Copy rabbitmq repo file] ****************************************************************************************************************************************************
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Install RabbitMQ Server"] ***************************************************************************************************************************************************
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Enable service RabbitMQ- Server and not touch the state] ********************************************************************************************************************
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Start rabbitmq service] *****************************************************************************************************************************************************
fatal: [rabbitmq-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "value of state must be one of: reloaded, restarted, started, stopped, got: start"}

PLAY RECAP ***********************************************************************************************************************************************************************************
rabbitmq-dev.devopspractice.info : ok=5    changed=1    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i rabbitmq-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=rabbitmq -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 452 bytes | 452.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   71ff17c..4a4166e  main       -> origin/main
Updating 71ff17c..4a4166e
Fast-forward
 roles/rabbitmq/tasks/main.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************
[WARNING]: Platform linux on host rabbitmq-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter
could change the meaning of that path. See https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Set Prompt] *****************************************************************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Copy rabbitmq repo file] ****************************************************************************************************************************************************
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Install RabbitMQ Server"] ***************************************************************************************************************************************************
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Enable service RabbitMQ- Server and not touch the state] ********************************************************************************************************************
ok: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Start rabbitmq service] *****************************************************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

TASK [rabbitmq : Add rabbitmq user] **********************************************************************************************************************************************************
changed: [rabbitmq-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************
rabbitmq-dev.devopspractice.info : ok=7    changed=3    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i payment-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=payment -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************************************************************
[WARNING]: Platform linux on host payment-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could change the meaning of that path. See
https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [payment-dev.devopspractice.info]

TASK [Load Python] ***************************************************************************************************************************************************************************************************************************
ERROR! this task 'community.general.npm' has extra params, which is only allowed in the following modules: ansible.builtin.add_host, ansible.builtin.include_role, ansible.builtin.group_by, ansible.builtin.set_fact, command, ansible.builtin.include_tasks, meta, ansible.builtin.include_vars, ansible.legacy.include, ansible.builtin.import_role, ansible.builtin.meta, script, import_role, ansible.legacy.command, ansible.legacy.import_tasks, ansible.legacy.group_by, ansible.legacy.add_host, ansible.builtin.command, ansible.legacy.include_role, ansible.builtin.raw, ansible.legacy.script, win_shell, include_role, ansible.legacy.shell, ansible.builtin.include, ansible.windows.win_shell, ansible.legacy.win_shell, ansible.builtin.win_shell, ansible.legacy.raw, win_command, ansible.legacy.win_command, set_fact, ansible.legacy.meta, ansible.builtin.import_tasks, ansible.legacy.import_role, add_host, include_vars, ansible.legacy.include_vars, ansible.legacy.include_tasks, ansible.legacy.set_fact, group_by, include, include_tasks, raw, ansible.builtin.win_command, ansible.windows.win_command, ansible.builtin.script, import_tasks, ansible.builtin.shell, shell

The error appears to be in '/home/ec2-user/roboshop-ansible/roles/common/tasks/python.yml': line 14, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:


- name: Install Python Dependencies
  ^ here

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i payment-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=payment -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 6 (delta 4), reused 6 (delta 4), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 449 bytes | 449.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   4a4166e..da76547  main       -> origin/main
Updating 4a4166e..da76547
Fast-forward
 roles/common/tasks/python.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************************************************************
[WARNING]: Platform linux on host payment-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could change the meaning of that path. See
https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [payment-dev.devopspractice.info]

TASK [Load Python] ***************************************************************************************************************************************************************************************************************************
ERROR! this task 'community.general.npm' has extra params, which is only allowed in the following modules: import_role, ansible.legacy.meta, ansible.legacy.raw, import_tasks, ansible.builtin.win_shell, set_fact, ansible.legacy.include_vars, meta, ansible.legacy.import_role, ansible.builtin.add_host, shell, command, ansible.legacy.add_host, include_tasks, ansible.builtin.group_by, ansible.legacy.win_command, ansible.builtin.set_fact, ansible.builtin.import_role, ansible.legacy.include_role, ansible.builtin.win_command, ansible.windows.win_command, ansible.windows.win_shell, ansible.builtin.include, win_shell, ansible.builtin.script, ansible.legacy.shell, ansible.builtin.import_tasks, ansible.builtin.include_tasks, ansible.legacy.script, ansible.builtin.command, ansible.legacy.group_by, group_by, ansible.legacy.set_fact, ansible.builtin.include_role, ansible.legacy.import_tasks, ansible.builtin.raw, ansible.legacy.include_tasks, ansible.legacy.win_shell, ansible.legacy.command, include_role, add_host, include_vars, script, ansible.legacy.include, ansible.builtin.include_vars, include, win_command, ansible.builtin.shell, raw, ansible.builtin.meta

The error appears to be in '/home/ec2-user/roboshop-ansible/roles/common/tasks/python.yml': line 14, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:


- name: Install Python Dependencies
  ^ here

54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i payment-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=payment -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 6 (delta 4), reused 6 (delta 4), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 460 bytes | 460.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   da76547..51ce0f2  main       -> origin/main
Updating da76547..51ce0f2
Fast-forward
 roles/common/tasks/python.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************************************************************
[WARNING]: Platform linux on host payment-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could change the meaning of that path. See
https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [payment-dev.devopspractice.info]

TASK [Load Python] ***************************************************************************************************************************************************************************************************************************
included: common for payment-dev.devopspractice.info

TASK [common : Install Python] ***************************************************************************************************************************************************************************************************************
ok: [payment-dev.devopspractice.info] => (item=python3)
ok: [payment-dev.devopspractice.info] => (item=gcc)
changed: [payment-dev.devopspractice.info] => (item=python-devel)

TASK [common : Load app prereqiuities] *******************************************************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/app_prerequisites.yml for payment-dev.devopspractice.info

TASK [common : Add Application User] *********************************************************************************************************************************************************************************************************
changed: [payment-dev.devopspractice.info]

TASK [common : Delete old Application Directory] *********************************************************************************************************************************************************************************************
ok: [payment-dev.devopspractice.info]

TASK [common : Create Application Directory] *************************************************************************************************************************************************************************************************
changed: [payment-dev.devopspractice.info]

TASK [common : Download and extract application content] *************************************************************************************************************************************************************************************
changed: [payment-dev.devopspractice.info]

TASK [common : Install Python Dependencies] **************************************************************************************************************************************************************************************************
changed: [payment-dev.devopspractice.info]

TASK [common : Systemd setup] ****************************************************************************************************************************************************************************************************************
included: /home/ec2-user/roboshop-ansible/roles/common/tasks/systemd_setup.yml for payment-dev.devopspractice.info

TASK [common : Copy the Service File] ********************************************************************************************************************************************************************************************************
changed: [payment-dev.devopspractice.info]

TASK [common : Start Application Service] ****************************************************************************************************************************************************************************************************
changed: [payment-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************************************************************
payment-dev.devopspractice.info : ok=12   changed=7    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i dispatch-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=dispatch -e env=dev roboshop-app.yml 
Already up to date.

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************************************************************
[WARNING]: Platform linux on host dispatch-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could change the meaning of that path. See
https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [dispatch-dev.devopspractice.info]

TASK [dispatch : Set Prompt] *****************************************************************************************************************************************************************************************************************
changed: [dispatch-dev.devopspractice.info]

TASK [dispatch : Copy dispatch service file] *************************************************************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [dispatch-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'dispatch.service'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/dispatch/files/dispatch.service\n\t/home/ec2-user/roboshop-ansible/roles/dispatch/dispatch.service\n\t/home/ec2-user/roboshop-ansible/roles/dispatch/tasks/files/dispatch.service\n\t/home/ec2-user/roboshop-ansible/roles/dispatch/tasks/dispatch.service\n\t/home/ec2-user/roboshop-ansible/files/dispatch.service\n\t/home/ec2-user/roboshop-ansible/dispatch.service on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************************************************************
dispatch-dev.devopspractice.info : ok=2    changed=1    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i dispatch-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=dispatch -e env=dev roboshop-app.yml 
remote: Enumerating objects: 9, done.
remote: Counting objects: 100% (9/9), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 5 (delta 2), reused 5 (delta 2), pack-reused 0 (from 0)
Unpacking objects: 100% (5/5), 408 bytes | 408.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   51ce0f2..001718d  main       -> origin/main
Updating 51ce0f2..001718d
Fast-forward
 roles/dispatch/{tasks => }/templates/dispatch.service | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename roles/dispatch/{tasks => }/templates/dispatch.service (100%)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************************************************************
[WARNING]: Platform linux on host dispatch-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could change the meaning of that path. See
https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [dispatch-dev.devopspractice.info]

TASK [dispatch : Set Prompt] *****************************************************************************************************************************************************************************************************************
changed: [dispatch-dev.devopspractice.info]

TASK [dispatch : Copy dispatch service file] *************************************************************************************************************************************************************************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: If you are using a module and expect the file to exist on the remote, see the remote_src option
fatal: [dispatch-dev.devopspractice.info]: FAILED! => {"changed": false, "msg": "Could not find or access 'dispatch.service'\nSearched in:\n\t/home/ec2-user/roboshop-ansible/roles/dispatch/files/dispatch.service\n\t/home/ec2-user/roboshop-ansible/roles/dispatch/dispatch.service\n\t/home/ec2-user/roboshop-ansible/roles/dispatch/tasks/files/dispatch.service\n\t/home/ec2-user/roboshop-ansible/roles/dispatch/tasks/dispatch.service\n\t/home/ec2-user/roboshop-ansible/files/dispatch.service\n\t/home/ec2-user/roboshop-ansible/dispatch.service on the Ansible Controller.\nIf you are using a module and expect the file to exist on the remote, see the remote_src option"}

PLAY RECAP ***********************************************************************************************************************************************************************************************************************************
dispatch-dev.devopspractice.info : ok=2    changed=1    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ sudo git pull ; ansible-playbook -i dispatch-dev.devopspractice.info, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=dispatch -e env=dev roboshop-app.yml 
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 463 bytes | 463.00 KiB/s, done.
From https://github.com/vivekaps16/roboshop-ansible
   001718d..fc26a6c  main       -> origin/main
Updating 001718d..fc26a6c
Fast-forward
 roles/dispatch/tasks/main.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

PLAY [Roboshop app Setup] ********************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************************************************************
[WARNING]: Platform linux on host dispatch-dev.devopspractice.info is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another Python interpreter could change the meaning of that path. See
https://docs.ansible.com/ansible-core/2.17/reference_appendices/interpreter_discovery.html for more information.
ok: [dispatch-dev.devopspractice.info]

TASK [dispatch : Set Prompt] *****************************************************************************************************************************************************************************************************************
changed: [dispatch-dev.devopspractice.info]

TASK [dispatch : Copy dispatch service file] *************************************************************************************************************************************************************************************************
changed: [dispatch-dev.devopspractice.info]

TASK [dispatch : Install golang] *************************************************************************************************************************************************************************************************************
changed: [dispatch-dev.devopspractice.info]

TASK [dispatch : Restart service daemon_reload] **********************************************************************************************************************************************************************************************
changed: [dispatch-dev.devopspractice.info]

TASK [dispatch : Restart dispatch Service] ***************************************************************************************************************************************************************************************************
changed: [dispatch-dev.devopspractice.info]

PLAY RECAP ***********************************************************************************************************************************************************************************************************************************
dispatch-dev.devopspractice.info : ok=6    changed=5    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   


54.84.42.225 | 172.31.95.123 | t2.micro | null
[ ec2-user@workstation ~/roboshop-ansible ]$ 
Broadcast message from root@ip-172-31-95-123.ec2.internal (Sat 2024-10-26 13:09:27 UTC):

The system will power off now!

Connection to ec2-54-84-42-225.compute-1.amazonaws.com closed by remote host.
Connection to ec2-54-84-42-225.compute-1.amazonaws.com closed.
┌─[✗]─[root@kk]─[/home/devops-practice/learn-terraform/roboshop-v1]
└──╼ #

