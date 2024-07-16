uwu

run this for prod:

nohup rails s -b 0.0.0.0 &

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