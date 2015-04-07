# All ubuntu boxes that are of interest
versions = ubuntu-15.04.box ubuntu-14.10.box ubuntu-14.04.box

# Default is to build the LTS version ... so, just 'make' goes here
default: ubuntu-14.04.box

# But you can build everything if you want to
all: $(versions) 

%.box: ubuntu/%.json
	cd ubuntu && packer build -only=virtualbox-iso $*.json

install-all: install-15.04 install-14.10 install-14.04
install-15.04: install(ubuntu-15.04)
install-14.10: install(ubuntu-14.10)
install-14.04: install(ubuntu-14.04)
# Install does not check whether the box exists, and doesn't add
# a dependency on %.box, since that'll recreate the box even if it already exists.
install(%): 
	vagrant box add --force --name $% virtualbox/$%.box

clean:
	rm -f virtualbox/*.box

# NB: this doesn't call 'vagrant box remove' .. so, doesn't clobber everything
clobber: clean
	rm -rf ubuntu/packer_cache