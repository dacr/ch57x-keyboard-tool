
CH57="ch57x-keyboard-tool" 

#CFG="keyboard-david.yaml"
CFG="keyboard-david-switch-screen.yaml"

all:
	cargo install --path .

upload:
	sudo ${CH57} upload ${CFG}

led:
	sudo ${CH57} led 1

keys:
	sudo ${CH57} show-keys

info:
	sudo lsusb -vvv -d 1189:8890
