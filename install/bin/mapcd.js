if (WScript.Arguments.Length < 2) {
  WScript.Echo("Mount CD with unattended to required drive letter\n"+
               "Example: mapcd.js \\dosbin\\install.pl w:");
  WScript.Quit(1);
}
var WshShell = WScript.CreateObject("WScript.Shell");
var fso = WScript.CreateObject("Scripting.FileSystemObject");
var wmi = GetObject("winmgmts:");
var disks = wmi.InstancesOf("Win32_CDROMDrive");
var e = new Enumerator(disks);
for (;!e.atEnd();e.moveNext())
{
  var x = e.item();
  if (x.MediaLoaded) {
    if (fso.FileExists(x.Drive + "\\" + WScript.Arguments(0))) {
      WshShell.Run("subst "+WScript.Arguments(1) + " " + x.Drive + "\\");
      var WshSysEnv = WshShell.Environment("SYSTEM");
      var SystemDrive = WshSysEnv("SystemDrive");
      var setzpath = fso.CreateTextFile(SystemDrive+"\\netinst\\setzpath.bat", true);
      setzpath.WriteLine("SET Z_PATH="+x.Drive);
      setzpath.Close();
    }
  }
}
WScript.Quit(1);
