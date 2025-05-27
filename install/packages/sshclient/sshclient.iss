; This file is taken from <http://www.ssh.com/support/documentation/online/ssh/winhelp/32/silent_installation.html>
;
; "szDir=C:\Program Files\..." was changed to "szDir=<ProgramFiles>\..." so it installs correctly on non-english systems too
;
[InstallShield Silent]
Version=v6.00.000
File=Response File
[File Transfer]
OverwrittenReadOnly=NoToAll
[{74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-DlgOrder]
Dlg0={74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdWelcome-0
Count=7
Dlg1={74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdLicense-0
Dlg2={74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdAskDestPath-0
Dlg3={74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdSelectFolder-0
Dlg4={74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdComponentTree-0
Dlg5={74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdStartCopy-0
Dlg6={74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdFinish-0
[{74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdWelcome-0]
Result=1
[{74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdLicense-0]
Result=1
[{74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdAskDestPath-0]
szDir=<ProgramFiles>\SSH Communications Security\SSH Secure Shell for Workstations
Result=1
[{74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdSelectFolder-0]
szFolder=SSH Secure Shell
Result=1
[{74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdComponentTree-0]
szDir=<ProgramFiles>\SSH Communications Security\SSH Secure Shell for Workstations
Component-type=string
Component-count=4
Component-0=Optional Files\Desktop Icons
Component-1=Optional Files\Documentation
Component-2=Optional Files\Command Line Tools
Component-3=Optional Files\Add Command Line Tools to Path
Result=1
[{74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdStartCopy-0]
Result=1
[Application]
Name=SSH Secure Shell for Workstations
Version=3.2
Company=SSH Communications Security
Lang=0009
[{74E2CD0C-D4A2-11D3-95A6-0000E86CFDE5}-SdFinish-0]
Result=1
bOpt1=0
bOpt2=0
