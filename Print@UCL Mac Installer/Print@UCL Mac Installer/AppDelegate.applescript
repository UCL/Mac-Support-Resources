--
--  AppDelegate.applescript
--  Print@UCL Mac Installer
--
--  Created by Alex Uhde on 02/08/2017.
--  Copyright © 2017 University College London. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened 
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
    
    set thePrinterDriver to ((path to me) & "Contents:Resources:Xerox WorkCentre 7655.gz" as string)
    set thePrinterFolderPath to ((path to "impr" from local domain) & "PPDs:Contents:Resources:" as string)
    tell application "Finder"
        -- Copy file from application bundle if it doesn't exixt
        if not (exists thePrinterFolderPath & "Xerox WorkCentre 7655.gz") then
            try
                duplicate thePrinterDriver to thePrinterFolderPath
                on error theErr number theErrNmbr
                display dialog "Finder encountered an error while trying to copy a file." & return & theErr & theErrNmbr
            end try
        end if
    end tell
    do shell script "lpadmin -p PRINTERNAME -L 'Printer Location' -E -v ipp://'print.ucl.ac.uk' /Library/Printers/PPDs/Contents/Resources/Xerox\\ WorkCentre\\ 7655.gz -D \"Printer Queue Name\""
	
end script
