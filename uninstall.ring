func main
	? "Removing Folder : Apache2.2"
	cDir = CurrentDir()
	chdir(exefolder()+"../libdepwin")
	OSDeleteFolder("Apache2.2")
	chdir(cDir)

func OSDeleteFolder cFolder 
	if isWindows() 
		systemSilent("rd /s /q " + cFolder)
	else
		systemSilent("rm -r " + cFolder)
	ok