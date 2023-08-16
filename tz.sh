
vagrant winrm -s cmd -c 'tzutil /s "Romance Standard Time"'  win-1
vagrant winrm -s cmd -c 'tzutil /s "Romance Standard Time"'  win-2
vagrant winrm -s cmd -c 'tzutil /g '  win-1
vagrant winrm -s cmd -c 'tzutil /g '  win-2
