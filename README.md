uwu

useful commands:
* rake db:drop:_unsafe db:setup RAILS_ENV=test
* Get-Process -Id (Get-NetTCPConnection -LocalPort 3000).OwningProcess 
* taskkill /F /PID 6280
* find . -type f -exec dos2unix {} \;
* RAILS_ENV=production rake db:migrate

run this for prod:

RAILS_ENV=production nohup rails s -b 'ssl://0.0.0.0:3000?key=/home/sharamall/certs/privkey.pem&cert=/home/sharamall/certs/fullchain.pem' -u puma 2>&1 &

TODO:

* add postgres container instead of sqlite3
* add specs
* figure out what the frick the site is supposed to be

installation:
* install visual studio with c/c++ extensions
* build libyaml on Windows:
* use developer command prompt for VS
* cmake .
* cmake --build . --config Release --clean-first
* ctest -C Release
* gem install psych -v 5.1.2 -- --with-libyaml-lib=C:\Tools\libyaml --with-libyaml-include=C:\Tools\libyaml\include
* try adding those to $PATH if it doesn't work or cd to C:/Tools when running gem install

ubuntu:
* make sure libssl-dev is installed before installing puma or it won't support TLS.
* if puma is already installed, then `gem uninstall puma` `sudo apt install libssl-dev -yq` `bundle install`