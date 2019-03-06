::dsuc::
SendRaw, A:Started download.
Send, {return}
SendRaw, R:Download finished successfully.
Send, {return}
return

::isuc::
SendRaw, A:Started install.
Send, {return}
SendRaw, R:Install finished successfully.
Send, {return}
return

::ifail::
SendRaw, A:Started install.
Send, {return}
SendRaw, R:Install failed due to
return

::pss::{raw}R:Passed on server.

::fss::
SendRaw, R:Failed on server due to:
Send, {return}
SendRaw, - 
return

::ros::{raw}A:Ran Dera on server.

::row::{raw}A:Ran Dera on workstations.

::psw::{raw}R:Passed on workstations.

::fsw::
SendRaw, R:Failed on workstations due to:
Send, {return}
SendRaw, - 
return

::psa::{raw}A:Passed to advanced installs.

::psg::{raw}A:Passed to guided installs.

::dchk::{raw}A:Checked DERA