#!/bin/bash

{
        cd /root/pwnadventure2_server/MasterServer
        mono MasterServer.exe &
}

sleep 5

{
        cd /root/pwnadventure2_server/GameServer
		if [[ $(grep -c 'ip' ./server.ini) -eq 0 ]]; then
			echo ip=echo ip=$(ip addr | grep inet | grep eth0 | awk '{print $2}' | sed 's|/.*||') >> ./server.ini
		else
			sed -i "s/ip=.*/ip=$(ip addr | grep inet | grep eth0 | awk '{print $2}' | sed 's|/.*||')/" ./server.ini
		fi
        ./start_servers.py &
}
