
# vagrant-and-ansible


Mise en place de 4 nodes et d'un Master via Vagrant & Ansible


---







**Infra | Deployment**







*  Node01 



    * Update ubuntu



    * Nginx  



* Node02



  * Update ubuntu



  * Apache



* Node03



  * update ubuntu



  * Mysql



    * dbuser :root



    * dbpass : azerty 



* Node04



  * update ubuntu



* Master



  * Update ubuntu



  * install ansible



  * copy hosts file file to /home/vagrant 



  * copy playbook.yaml file to /home/vagrant



  * copy script.sh file to /home/vagrant 







---







**Launch varant & connect to Master**







* vagrant up



* vagrant ssh Master



* sh script.sh



    * yes pour chaque ssh-copy-id



    * pass du node  

