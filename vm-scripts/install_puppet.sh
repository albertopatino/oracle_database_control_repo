#
# Install correct puppet version
#
if [ -f "/vagrant/puppet_version" ]; then
  PACKAGE="puppet-agent-$(cat /vagrant/puppet_version)"
else
  PACKAGE="puppet-agent"
fi
echo "Installing $PACKAGE"
yum install -y --nogpgcheck https://yum.puppetlabs.com/puppet6/puppet6-release-el-7.noarch.rpm > /dev/null
yum install -y --nogpgcheck $PACKAGE
rpm -q git || yum install -y --nogpgcheck git
