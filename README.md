# Obey the Testing Goat  :goat:
https://www.obeythetestinggoat.com/book/pre-requisite-installations.html

From the book: "Create a new Python file ... wherever you want to keep the code for your project, and enter the following code. If you feel like making a few little goat noises as you do it, it may help:"

### Setup/Installation

Install requirements to run locally.

Clone repository:

```sh
$ git clone https://github.com/kathryn-rowe/tdd-goat.git
```
Move into folder.

```sh
$ cd tdd-goat
```
Set-up Vagrant Linux machine:

```sh
$ cd vagrant_files
```
```sh
$ vagrant up
```
```sh
$ vagrant ssh
```
The book requires Python3

```sh
$ python3 -V
Python 3.5.2
$ pip -V
pip 9.0.1 from /home/vagrant/src/tdd-goat/goat_app/env/lib/python3.5/site-packages (python 3.5)
```
Create & activate virtual environment:

```sh
$ cd src/tdd-goat/goat_app/
```
```sh
$ pyvenv env
```
```sh
$ source env/bin/activate
```
Install dependencies:

```sh
$ pip install -r requirements.txt
```
Get started with the goat! https://www.obeythetestinggoat.com/book/part1.harry.html

So firefox opens in the Vagrant GUI, configure functional_tests.py

```sh
from pyvirtualdisplay import Display
from selenium import webdriver

display = Display(visible=0, size=(800, 600))
display.start()

browser = webdriver.Firefox()
browser.get('http://localhost:8000')

browser.close()
display.stop()
```
```sh
$ python3 functional_tests.py
```