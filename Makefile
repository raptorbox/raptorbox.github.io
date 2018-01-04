.PHONY: build copy-swagger

RAPTOR_PATH := ../raptor/swagger/api

copy-swagger:
	rm -fr ./swagger
	mkdir -p ./swagger
	cp -r ${RAPTOR_PATH} ./swagger

deps:


build: copy-swagger
	npm run build
