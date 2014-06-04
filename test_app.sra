$PBExportHeader$test_app.sra
$PBExportComments$Generated Application Object
forward
global type test_app from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type test_app from application
string appname = "test_app"
end type
global test_app test_app

on test_app.create
appname="test_app"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on test_app.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_main)
end event

