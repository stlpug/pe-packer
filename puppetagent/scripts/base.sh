# kernel-devel not available via minimal iso
yum -y install make gcc gcc-c++ kernel-devel-`uname -r` perl git

# set MOTD w/puppet console access information
cat << MOTD > /etc/motd
      _   _                   
     | | | |                  
  ___| |_| |_ __  _   _  __ _ 
 / __| __| | '_ \| | | |/ _\` |
 \__ \ |_| | |_) | |_| | (_| |
 |___/\__|_| .__/ \__,_|\__, |
           | |           __/ |
           |_|          |___/ 

MOTD

# Set pretty prompt
curl -so /etc/profile.d/prompt.sh https://gist.githubusercontent.com/ktreese/1ad2dc99aa2840b9e80d/raw/d37451ffc0f6ea54d6ba046ea661f8893744b16f/prompt.sh

