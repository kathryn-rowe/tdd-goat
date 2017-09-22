# Obey the Testing Goat  :goat:
https://www.obeythetestinggoat.com/book/pre-requisite-installations.html

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
Set-up Vagrant Linux maching:

```sh
$ cd vagrant_files
```
```sh
$ vagrant up
```
```sh
$ vagrant ssh
```
Create virtual environment:

```sh
$ virtualenv env
```
Activate virtual environment:

```sh
$ source env/bin/activate
```
Install dependencies:

```sh
$ sudo apt-get update
$ sudo apt-get install firefox
```
```sh
$ wget https://github.com/mozilla/geckodriver/releases/download/v0.16.1/geckodriver-v0.16.1-linux64.tar.gz
$ sudo sh -c 'tar -x geckodriver -zf geckodriver-v0.19.0-linux64.tar.gz -O > /usr/bin/geckodriver'
$ sudo chmod +x /usr/bin/geckodriver
$ rm geckodriver-v0.19.0-linux64.tar.gz
```
```sh
$ pip install -r requirements.txt
```