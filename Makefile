.PHONY: all base node ruby sfdx

all: base ruby node sfdx

base:
	cd base; docker build -t base .
	docker tag base theconversation/base:latest

node:
	cd node; docker build -t node .
	docker tag node theconversation/node:latest

ruby:
	cd ruby; docker build -t ruby .
	docker tag ruby theconversation/ruby:latest

sfdx:
	cd sfdx; docker build -t sfdx .
	docker tag sfdx theconversation/sfdx:latest

push:
	docker push theconversation/base:latest
	docker push theconversation/node:latest
	docker push theconversation/ruby:latest
	docker push theconversation/sfdx:latest

clobber:
	docker rmi base theconversation/base:latest
	docker rmi node theconversation/node:latest
	docker rmi ruby theconversation/ruby:latest
	docker rmi sfdx theconversation/sfdx:latest
