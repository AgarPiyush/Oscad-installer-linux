#!/usr/bin/python

from Tkinter import *
from setPath import OSCAD_HOME
import fileinput
import tkMessageBox
import subprocess
import sys
import os
import re
class AutoScrollbar(Scrollbar):
    # a scrollbar that hides itself if it's not needed.  only
    # works if you use the grid geometry manager.
    def set(self,lo,hi):
     #   if float(lo) <= 0.0 and float(hi) >= 1.0:
      #      # grid_remove is currently missing from Tkinter!
       #     self.tk.call("grid", "remove", self)
        #else:
         #   self.grid()
        Scrollbar.set(self,lo,hi)
""" def pack(self, **kw):
        raise TclError, "cannot use pack with this widget"
    def place(self, **kw):
        raise TclError, "cannot use place with this widget"
        """


class myframe():
	def __init__(self,parent):
		self.master=parent
		#Creating MenuBar
		menubar=Menu(parent)
		filemenu=Menu(menubar,tearoff=0)
		filemenu.add_command(label="Save", command=self.file_save)
		filemenu.add_command(label="Exit",command=self.exit_window)
		menubar.add_cascade(label="File", menu=filemenu)
		#Display menu
		parent.config(menu=menubar)
		
		#Creatin Canvas Object
		vscrollbar = AutoScrollbar(parent)
		vscrollbar.grid(row=0, column=1, sticky=N+S)
		hscrollbar = AutoScrollbar(root, orient=HORIZONTAL)
		hscrollbar.grid(row=1, column=0, sticky=E+W)
		c_obj=Canvas(parent,height=400,width=400,yscrollcommand=vscrollbar.set,xscrollcommand=hscrollbar.set)
		c_obj.grid(row=0, column=0, sticky=N+S+E+W)
		vscrollbar.config(command=c_obj.yview)
		hscrollbar.config(command=c_obj.xview)
		
		# make the canvas expandable
		root.grid_rowconfigure(0, weight=1)
		root.grid_columnconfigure(0, weight=1)
		
		# create canvas contents
		frame = Frame(c_obj)
		frame.rowconfigure(1, weight=1)
		frame.columnconfigure(1, weight=1)
		
		frame1=Frame(parent)
		label0= Label(frame1,text='Note:',font="Arial 20")
		label0.grid(sticky=W)
		
		#Iterating note file for user
		for line in fileinput.input([OSCAD_HOME+"/Fritzingtokicad/note.txt"]):
			label1=Label(frame1,text=line,pady=0,padx=0,width=0)
			label1.grid(sticky=W)
		frame1.grid()
		global var
		var={}
		global count
		count=0
		
		##Checking for exitance of file 
		fname="comp_value.txt"
		if os.path.exists(fname):
			print "File found"
			print "Renaming file comp_val.txt to comp_valbak.txt"
			os.rename('comp_value.txt','comp_valbak.txt')
			scancomplist=open("comp_list.txt",'r')
			newcompval=open("comp_value.txt",'w+')
			bakcompval=open("comp_valbak.txt",'r')
			clist1=[]	
			cval=[]
			clist2=[]
			for compval in bakcompval:
				cval.append(compval.strip())
	 			clist2.append(compval.strip().partition(':')[0])
			for complist in scancomplist:
				clist1.append(complist.strip())
			print "Component Value List :",cval 
			print "Component List1:",clist1
			print "Component List2:",clist2
			print "writing from comp_valbak.txt file to new comp_val.txt"
			for reclist in open("comp_valbak.txt",'r'):
				line=reclist.split(':')
				print line[0]
				if line[0] in clist1:
					print "In clist1"
					newcompval.write(reclist)
				else:
					continue
			print "writing from comp_list.txt to new comp_val.txt"
			for recval in open("comp_list.txt",'r'):
				line=recval.strip()
				if line in clist2:
					print line,"Present in old list"
					continue
				else:
					print line,"Not present in old list"
					newcompval.write(line)
					newcompval.write(':0')
					newcompval.write('\n') 	
	
			scancomplist.close()
			newcompval.close()
			bakcompval.close()					
			for line in fileinput.input(['comp_value.txt']):
				column=line.split(':')
				label=Label(frame,text=column[0])
				label.grid(row=count,sticky=W+E+N+S)
				var[count] = StringVar()
				entry=Entry(frame,width=10,textvariable=var[count])
				entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
				var[count].set(column[1].strip())
				count=count+1
				
		else:
			print "File Not Found"		
			for line in fileinput.input(['comp_list.txt']):
				label=Label(frame,text=line)
				label.grid(row=count,sticky=W+E+N+S)
				var[count] = StringVar()
			     	if re.search(r"\ARWire",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,0)
					count=count+1
				elif re.search(r"\AU_PLOT",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'vplot8_1')
					count=count+1
				elif re.search(r"\AU_AND",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74ls08')
					count=count+1
				elif re.search(r"\AU_OR",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74ls32')
					count=count+1
				elif re.search(r"\AU_NAND",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74ls00')
					count=count+1
				elif re.search(r"\AU_NOR",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74ls02')
					count=count+1
				elif re.search(r"\AU_XOR",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74ls86')
					count=count+1
				elif re.search(r"\AU_XNOR",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74266')
					count=count+1
				elif re.search(r"\AU_NOT",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74ls04')
					count=count+1
				elif re.search(r"\AU_DFF",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74ls74')
					count=count+1
				elif re.search(r"\AU_JKFF",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74ls109')
					count=count+1
				elif re.search(r"\AU_SRFF",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74ls71')
					count=count+1
				elif re.search(r"\AU_TFF",line):
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					entry.insert(count,'74ls75')
					count=count+1
				else:
					entry=Entry(frame,width=10,textvariable=var[count])
					entry.grid(row=count,column=1,sticky=W+E+N+S,padx=0,pady=0)
					count=count+1
		c_obj.create_window(0, 0, anchor=NW, window=frame)
		frame.update_idletasks()
		c_obj.config(scrollregion=c_obj.bbox("all"))
			

	def file_save(self):
		global count
		global var
		print "Total Number of Elements : "+str(count)
		count = 0
		print "Taking file name to create proper .cir file  :"+sys.argv[1]
		st=sys.argv[1]
		#str1=st.split('.')[0]
		str2=st.split('.')[0]+".cir"
		subprocess.call(["touch",str2])
		#infile = open("comp_list.txt", 'r') # open file for reading
		cirfile=open(str2,'w')  #Open cir file
		reffile=open("refrence.txt",'r') #open reference file
		outfile = open("comp_value.txt",'w') # open file for writing
		
		
		for line in reffile.readlines():
			print line.strip()+':'+var[count].get().strip()
			word=line.partition(' ')
			outfile.write(word[0].strip()+':'+var[count].get().strip())
			outfile.write("\n")
			cirfile.write(line.strip()+' '+var[count].get().strip())
			cirfile.write("\n")
			count+=1
		reffile.close()
		outfile.close()
		cirfile.close()
		
	def exit_window(self):
		self.master.quit()	
	
		
##Program Starts from here		
root = Tk()
root.title("Component Detail")
#Message Dialouge Box
tkMessageBox.showinfo("Enter Value","Please Enter the value of component" )
hello = myframe(root)
root.mainloop()


