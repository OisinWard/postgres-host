up: 
	vagrant up

rm: 
	vagrant destroy -f

stop:
	vagrant halt

provision:
	vagrant provision

ssh:
	ssh postgres-host

rebuild: rm up

rm-hard: rm
	rm -rf ~/.vagrant.d/

rebuild-hard: rm-hard up

restart: stop up
