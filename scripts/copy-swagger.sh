#!/bin/sh

DIR=`pwd`
RAPTORPATH=`realpath ../raptor/swagger/api`

rm -fr $DIR/swagger
mkdir -p $DIR/swagger

cp -r $RAPTORPATH $DIR/swagger
