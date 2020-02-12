#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;=================================== START ESYNC ONLY ======================================;

;Script used for Installs that contain eSync only 
::eSyncOnly::

;Pauses for 2 seconds at the start of the script to allow for the typed script to be deleted prior to the GUI showing up
Sleep, 2000

;Will create a text entry box for the name of the customer contact
InputBox, custName, Customer Name, Please enter the name of the customer you are working with., Show, 50px, 50px, , , Sans, 3000, Enter Name

;Will create a text entry box for the name of the eSRV Admin TSM that set up eClaims
InputBox, eSRVAdmin, Admin Name, Please etner the first initial and last name of the eServices Admin who provided passwords, Show, 50px, 50px, , , Sans, 3000, eSRV Admin

SendRaw, A: Contacting %custName% 
Send, {return}
SendRaw, - Remoted into server and workstations
Send, {return}
SendRaw, - Running Dera and Port Checker
Send, {return}
SendRaw, R: Added ports and exclusions
Send, {return}
SendRaw, A: Adding modify rights to users in HSI and temp folders
Send, {return}
SendRaw, R: Successful
Send, {return}
SendRaw, A: Installing eSync and Datasync
Send, {return}
SendRaw, R: Successful
Send, {return}
SendRaw, A: Setting up eClaims and Quickbill with assistance from %eSRVAdmin% 
Send, {return}
SendRaw, - Setting up eCentral, Eligibilities and Websync
Send, {return}
SendRaw, R: Installation Successful
Send, {return}
SendRaw, Done
Return

;=================================== END ESYNC ONLY ======================================;



;================================= START ESYNC & IBEX ======================================;

;Script used for Installs that contain eSync and IBEX
::eSyncIBEX::

;Pauses for 2 seconds at the start of the script to allow for the typed script to be deleted prior to the GUI showing up
Sleep, 2000

;Will create a text entry box for the name of the customer contact
InputBox, custName, Customer Name, Please enter the name of the customer you are working with., Show, 50px, 50px, , , Sans, 3000, Enter Name

;Will create a text entry box for the name of the eSRV Admin TSM that set up eClaims
InputBox, eSRVAdmin, Admin Name, Please etner the first initial and last name of the eServices Admin who provided passwords, Show, 50px, 50px, , , Sans, 3000, eSRV Admin


; Attempting to create a drop down list with a yes/no option so users are still prompted as to whether or not they actually enabled the selective upload, verified the upload, etc. 
;vvvvvvvvvvvvv Attempts below vvvvvvvvvvvvvvvv
Gui, Add, DropDownList, Yes, No
; Gui, Add, DropDownList, selectiveUp, Yes|No


SendRaw, Blocked Providers: %DropDownList%
Send, {return}
SendRaw, Who Enabled 2-Way: SFDC
Send, {return}
SendRaw, Enabled Selective Upload: %selectiveUp%
Send, {return}
SendRaw, Started Ibex Scheduler: Yes
Send, {return}
SendRaw, Verified Upload: Yes
Send, {return}
SendRaw, Checked 'ActivePatientsOnly': Yes
Send, {return}
SendRaw, Verified addresses, username and
Send, {return}
SendRaw, passwords are correct: 
Send, {return}
	SendRaw, TSM Entered: 
    Send, {return}
	SendRaw, TSM Witnessed: 
    Send, {return}

SendRaw, A: Contacting %custName% | remoted into server and workstations
Send, {return}
SendRaw, -Disabled power saving settings
Send, {return}
SendRaw, -Adding ports and exclusions
Send, {return}
SendRaw, Continuing setup:
Send, {return}
SendRaw, -Adding modify rights to users in HSI and temp folders
Send, {return}
SendRaw, -Installing eSync
Send, {return}
SendRaw, -Installing IBEX
Send, {return}
SendRaw, -Setting up eCentral, eClaims, Ins mgr, Eligibilities and IBEX parameters with assistance from %eSRVAdmin%
Send, {return}
SendRaw, R: Installation Successful
Send, {return}
SendRaw, A: Initializing Patient Engage upload 
Send, {return}
SendRaw, R: Upload reads successful
Send, {return}
SendRaw, A: Started IBEXScheduler service
Send, {return}
SendRaw, R: cust is ready for onboarding
Send, {return}
SendRaw, Done
return 
;================================= END ESYNC & IBEX ======================================;



;=================================== START IBEX ONLY ======================================;

;Script for IBEX-Only installs. Includes prompt for contact name, Who verified install 
::IBEXOnly::

;Pauses for 2 seconds at the start of the script to allow for the typed script to be deleted prior to the GUI showing up
Sleep, 2000

;Will create a text entry box for the name of the customer contact
InputBox, custName, Customer Name, Please enter the name of the customer you are working with., Show, 50px, 50px, , , Sans, 3000, Enter Name

SendRaw, Blocked Providers: %anyBlocked%
Send, {return}
SendRaw, Who Enabled 2-Way: SFDC
Send, {return}
SendRaw, Enabled Selective Upload: %selectiveUp%
Send, {return}
SendRaw, Started Ibex Scheduler: Yes
Send, {return}
SendRaw, Verified Upload: Yes
Send, {return}
SendRaw, Checked 'ActivePatientsOnly': Yes
Send, {return}
SendRaw, Verified addresses, username and
Send, {return}
SendRaw, passwords are correct: 
Send, {return}
	SendRaw, TSM Entered: 
    Send, {return}
	SendRaw, TSM Witnessed: 
    Send, {return}



return

;=================================== END IBEX ONLY ======================================;



;=================================== START IBEX SUPPORT =====================================;

; URL used to acces the IBEX Support Tool
::IBEXSupport::
Sleep, 2000
SendRaw, https://ibex-support.internetbrands.com/logs/login.html
Return

;=================================== START IBEX SUPPORT =====================================;



;================================== START IBEX API FINDER ===================================;

; URL Used to figure out whether or not a practice has an API
::FindAPI::
Sleep, 2000
InputBox, BID, Business ID, Please enter the Business ID, Show, 50px, 50px, , , Sans, 3000, Enter Business ID

SendRaw, https://ibex-support.internetbrands.com/logs/clientDataViewer.html?clientUserName=%BID% 


return 
;================================== END IBEX API FINDER ===================================;

