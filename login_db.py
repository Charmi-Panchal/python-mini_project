from tkinter import *
import password_regex as pswd
import mysql.connector
def reset(event):
	t1.delete(0,"end")
	t2.delete(0,"end")
def valid(event):
	mydb=mysql.connector.connect(host="localhost",user="root",password="",database="visions")
	user=t1.get()
	passw=t2.get()
	q=("select * from login")
	status=False
	cur=mydb.cursor()
	cur.execute(q)
	rows=cur.fetchall()
	for row in rows:
		if row[0]==user and row[1]==passw:
			status=True
			break
	if status:
		lsw=Tk()
		lbl1=Label(lsw,text="Login Successful").pack()
	else:
		lsw1=Tk()
		lbl2=Label(lsw1,text="Login UnSuccessful").pack()		


window=Tk()
window.title("Login")
frame=Frame(window,width=400,height=200)
frame.pack()
l1=Label(frame,text="Username")
l1.grid(row=0,column=0,ipadx=15,ipady=15,sticky="w")
t1=Entry(frame,text="")
t1.grid(row=0,column=1,ipadx=5,ipady=5,sticky="e")
l2=Label(frame,text="Password")
l2.grid(row=1,column=0,ipadx=15,ipady=15,sticky="w")

t2=Entry(frame,text="",show="*")
t2.grid(row=1,column=1,ipadx=5,ipady=5,sticky="e")

def validate(event) :
	if pswd.password(t2.get()):
		pass
	else:
		lsw=Tk()
		lbl1=Label(lsw,text="Invalid Password Format").pack()
		t2.delete(0,"end")
b1=Button(frame,text="Login")
b1.grid(row=2,column=1,ipadx=5,ipady=5,sticky="s")
b1.bind("<Button-1>",valid)
b1.bind("<Enter>",validate)

b2=Button(frame,text="Reset")
b2.grid(row=2,column=2,padx=5,pady=5,sticky="s")
b2.bind("<Button-1>",reset)
window.mainloop()