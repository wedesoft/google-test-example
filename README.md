Example for testing using [Google Test](https://code.google.com/p/googletest/)

# g++

```Shell
sudo aptitude install google-mock
git clone https://github.com/wedesoft/google-test-example.git
cd google-test-example
make check
```

# MSVC

```Shell
git clone https://github.com/wedesoft/google-test-example.git
cd google-test-example
wget https://googletest.googlecode.com/files/gtest-1.7.0.zip
unzip gtest-1.7.0.zip
wget https://googlemock.googlecode.com/files/gmock-1.7.0.zip
unzip gmock-1.7.0.zip
explorer *.sln
```

# Also see

* [Google Test][1], [Google Mock][2]
* [Boost Test][3]
* [Keep console open in MSVC++][4]

[1]: https://code.google.com/p/googletest/
[2]: https://code.google.com/p/googlemock/
[3]: http://www.boost.org/doc/libs/1_59_0/libs/test/doc/html/index.html
[4]: http://stackoverflow.com/questions/454681/how-to-keep-the-console-window-open-in-visual-c
