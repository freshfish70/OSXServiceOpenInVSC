on run {input, parameters}
	tell application "Finder" to set theItems to selection
	repeat with itemRef in theItems
		set myitem to "" & POSIX path of (itemRef as string) & ""
	end repeat -- it will store the last filename in selection
	tell application "Code"
		open myitem
	end tell
	return input
end run