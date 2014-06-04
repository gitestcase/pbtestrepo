$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_exit from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 2373
integer height = 1704
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_exit cb_exit
end type
global w_main w_main

on w_main.create
this.cb_exit=create cb_exit
this.Control[]={this.cb_exit}
end on

on w_main.destroy
destroy(this.cb_exit)
end on

type cb_exit from commandbutton within w_main
integer x = 910
integer y = 1276
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Exit"
end type

event clicked;close(w_main)
end event

