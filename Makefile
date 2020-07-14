.PHONY: all base node ruby ruby-ubuntu sfdx

all: base ruby ruby-ubuntu node sfdx

base:
	pwd
	cd ./base; docker build -t base .
	docker tag base theconversation/base:latest
	docker tag base theconversation/base:alpine3.11

node:
	cd ./node; docker build -t node .
	docker tag node theconversation/node:latest
	docker tag node theconversation/node:alpine3.11

ruby:
	cd ./ruby; docker build -t ruby .
	docker tag ruby theconversation/ruby:latest
	docker tag ruby theconversation/ruby:alpine3.11

ruby-ubuntu:
	cd $@; docker build -t $@ .
	docker tag $@ theconversation/ruby:latest-ubuntu-xenial
	docker tag $@ theconversation/ruby:2.6-ubuntu-xenial-20200714

sfdx:
	cd ./sfdx; docker build -t sfdx .
	docker tag sfdx theconversation/sfdx:latest
	docker tag sfdx theconversation/sfdx:alpine3.11

push:
	docker push theconversation/base:latest
	docker push theconversation/base:alpine3.11
	docker push theconversation/node:latest
	docker push theconversation/node:alpine3.11
	docker push theconversation/ruby:latest
	docker push theconversation/ruby:alpine3.11
	docker push theconversation/ruby:latest-ubuntu-xenial
	docker push theconversation/ruby:2.6-ubuntu-xenial-20200714
	docker push theconversation/sfdx:latest
	docker push theconversation/sfdx:alpine3.11

clobber:
	docker rmi base theconversation/base
	docker rmi node theconversation/node
	docker rmi ruby theconversation/ruby
	docker rmi sfdx theconversation/sfdx
