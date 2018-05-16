$script = New-Object -ComObject wscript.shell


$response = $script.Popup(“Have you uninstalled Java from Control Panel? “,0,”Java Folder Removal Tool”,4)    


#$response = $script.Popup('Body text',(nSecondsToWait),'PopupTitle',nLayoutType) 
# to control the icons  4,16,32,64
#+to modify buttons add 1,2,3,4,5


#Response codes
#6  = yes
#7  = no
#retr
#canc
#abor

if ($response -eq 6){
    #user selected Yes
    "Software already removed, nothing to do"
    }
else {
    #user selected No
    "Proceed to uninstall Java"
    "invoking : msiexec /x {A4BFF20C-A21E-4720-88E5-79D5A5AEB2E8}"
    }

#moreinfo : https://msdn.microsoft.com/en-us/library/x83z1d9f(v=vs.84).aspx