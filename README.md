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
$ python -V
$ alias python=/usr/bin/python3.5
$ pip -V
$ sudo apt-get install python3-pip
$ pip3 -V
```
Install dependencies:

```sh
$ sudo apt-get update
$ sudo apt-get install firefox
```
```sh
$ wget https://github.com/mozilla/geckodriver/releases/download/v0.19.0/geckodriver-v0.19.0-linux64.tar.gz
$ sudo sh -c 'tar -x geckodriver -zf geckodriver-v0.19.0-linux64.tar.gz -O > /usr/bin/geckodriver'
$ sudo chmod +x /usr/bin/geckodriver
$ rm geckodriver-v0.19.0-linux64.tar.gz
$ geckodriver --version
```
Create virtual environment:

```sh
$ cd src/tdd-goat/goat_app/
```
```sh
$ virtualenv env
```
Activate virtual environment:

```sh
$ source env/bin/activate
```
Install dependencies:

```sh
$ pip3 install -r requirements.txt
```
