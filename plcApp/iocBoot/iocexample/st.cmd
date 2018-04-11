#!../../bin/linux-x86/example

## You may have to change example to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/example.dbd")
dbLoadDatabase("dbd/common.dbd")
dbLoadDatabase("dbd/yew.dbd")
example_registerRecordDeviceDriver pdbbase

## Load record instances

dbLoadRecords "db/bias1.db"
dbLoadRecords "db/bias2.db"
dbLoadRecords "db/bias3.db"
dbLoadRecords "db/bias4.db"
dbLoadRecords "db/bias5.db"
dbLoadRecords "db/bias6.db"
dbLoadRecords "db/bias7.db"
dbLoadRecords "db/bias8.db"

## Set this to see messages from mySub
#var mySubDebug 1

## Run this to trace the stages of iocInit
#traceIocInit

cd ${TOP}/iocBoot/${IOC}
iocInit
