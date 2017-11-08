

wget https://freedesktop.org/software/pulseaudio/releases/pulseaudio-$(pulseaudio --version|sed 's/pulseaudio //g').tar.gz
tar xvf pulseaudio*
cd pulseaudio-$(pulseaudio --version|sed 's/pulseaudio //g')

apt-get build-dep pulse-audio
./configure

apt-get autoremove $(apt-cache showsrc pulseaudio | sed -e '/Build-Depends/!d;s/Build-Depends: \|,\|([^)]*),*\|\[[^]]*\]//g')

