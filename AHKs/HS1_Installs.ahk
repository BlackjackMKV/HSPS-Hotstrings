#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


::eSyncOnly::
InputBox, custName, Customer Name, Please enter the name of the customer you are working with., Show, 50px, 50px, , , Sans, 3000, Enter Name
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

::eSyncIBEX::
InputBox, custName, Customer Name, Please enter the name of the customer you are working with., Show, 50px, 50px, , , Sans, 3000, Enter Name
InputBox, eSRVAdmin, Admin Name, Please etner the first initial and last name of the eServices Admin who provided passwords, Show, 50px, 50px, , , Sans, 3000, eSRV Admin
; Gui, Add, DropDownList, ProvBlocked, Yes|No
Gui, Add, DropDownList, SelectiveUp, Yes|No


SendRaw, Blocked Providers: %SelectiveUp%
Send, {return}
SendRaw, Who Enabled 2-Way: SFDC
Send, {return}
SendRaw, Enabled Selective Upload: 
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

; URL used to acces the IBEX Support Tool
::IBEXSupport::
SendRaw, https://ibex-support.internetbrands.com/logs/login.html
Return

; URL Used to figure out whether or not a practice has an API
::FindAPI::
InputBox, BID, Business ID, Please enter the Business ID, Show, 50px, 50px, , , Sans, 3000, Enter Business ID

SendRaw, https://ibex-support.internetbrands.com/logs/clientDataViewer.html?clientUserName=%BID% 