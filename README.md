# Obey the Testing Goat  :goat:
https://www.obeythetestinggoat.com/book/pre-requisite-installations.html

From the book: "Create a new Python file ... wherever you want to keep the code for your project, and enter the following code. If you feel like making a few little goat noises as you do it, it may help:"

### Setup/Installation

Clone repository:

```sh
$ git clone https://github.com/kathryn-rowe/tdd-goat.git
```
Move into folder.

```sh
$ cd tdd-goat
```
Delete the directory with my work: superlists at tdd-goat/goat_app/

```sh
$ cd goat_app/
$ rm -r superlists/
```

Set-up Vagrant Linux machine:

Make sure to sync your desired folders in the Vagrantfile. Right now, I have it configured as:

config.vm.synced_folder "../goat_app", "/home/vagrant/src/tdd-goat/goat_app"


```sh
$ cd vagrant_files
```
```sh
$ vagrant up
```
```sh
$ vagrant ssh
```
The book requires Python3.6

```sh
vagrant@TDD-Goat-vagrant:~$ python3 -V
Python 3.6.3
```
```sh
vagrant@TDD-Goat-vagrant:~$ pip3 -V
pip 9.0.1 from /usr/local/lib/python3.6/dist-packages (python 3.6)
```
Create & activate virtual environment:

```sh
vagrant@TDD-Goat-vagrant:~$ cd src/tdd-goat/goat_app/
```
```sh
vagrant@TDD-Goat-vagrant:~/src/tdd-goat/goat_app$ virtualenv --python=python3.6 env
```
```sh
vagrant@TDD-Goat-vagrant:~/src/tdd-goat/goat_app$ source env/bin/activate
```
Install dependencies:

```sh
(env) vagrant@TDD-Goat-vagrant:~/src/tdd-goat/goat_app$ pip install -r requirements.txt
```
Get started with the goat! https://www.obeythetestinggoat.com/book/part1.harry.html

Remember to run with Python 3.6!

```sh
(env) vagrant@TDD-Goat-vagrant:~/src/tdd-goat/goat_app$ python3 functional_tests.py
```
So firefox opens in the Vagrant GUI, configure functional_tests.py

```sh
from pyvirtualdisplay import Display
from selenium import webdriver

display = Display(visible=0, size=(800, 600))
display.start()

browser = webdriver.Firefox()

browser.close()
display.stop()
```
Due to what I think is a tricky PyVirutalDisplay bug, I cannot do the tradition setUp and tearDown functions. self.browser = webdriver.Firefox() must be included at the begining of each test, self.browser.quit() must be included at the end of each test, and display.stop() must be at the end of the last test.


If you'd like to "see" the Firefox browser, install a Desktop Environment. The tutorial does instruct you to open the browser manually a few times, although it's not required.

```sh
vagrant@TDD-Goat-vagrant:~$ sudo apt-get install xfce4
vagrant@TDD-Goat-vagrant:~$ sudo startxfce4&
```