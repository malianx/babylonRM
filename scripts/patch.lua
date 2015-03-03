ACTION_DownloadExecute = 2
ACTION_Execute = 3

patchfilename = ""
patchurl = ""
pid = ""
exetie = ""
hw2exe = ""


Extensions = 
{
	{
		extension = "exe",
		action = ACTION_DownloadExecute,
		getcommand = function()  return "rundll32"; end,
		getparameters = function()  return exetie.." RunDll32 "..pid.." \""..patchfilename.."\""; end,
	},
	{
		extension = "msi",
		action = ACTION_Execute,
		getcommand = function()  return "rundll32"; end,
		getparameters = function()  return exetie.." RunDll32 "..pid..[[ msiexec /i "]]..patchurl..[["]]; end,
	},	
}