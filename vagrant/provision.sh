  yum makecache
  yum install -y gcc python-devel
  curl --silent https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
  python /tmp/get-pip.py 2>/dev/null
  cd /vagrant && pip install -r requirements.txt

if [ ! -f /vagrant/security.yml ]; then
  cd /vagrant && ./security-setup --enable=false
fi
cd /vagrant && ansible-playbook vagrant.yml -e @security.yml -i /vagrant/vagrant/vagrant-inventory
