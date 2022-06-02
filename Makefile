

install: 
	mkdir -p /opt/.beep/dabeep
	cp -r ./do_the_beep.sh ./get_beeped.sh ./GetBeeped.service /opt/.beep
	chmod -R 700 /opt/.beep
	cp /opt/.beep/GetBeeped.service /etc/systemd/system/
	systemctl daemon-reload
	systemctl enable GetBeeped.service
	systemctl start GetBeeped.service

uninstall:
	rm /etc/systemd/system/GetBeeped.service
	rm -r /opt/.beep
