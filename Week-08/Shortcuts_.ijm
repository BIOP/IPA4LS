/* 
 * DESCRIPTION 
 * This ActionBar showcases some very simple examples, where commands are copied from
 * the Macro recorder, and copied into the appropriate location in the ActionBar code 
 * (Between the <macro> tags)
 * 
 * This was made in the context of Image Processing For Life Scientists (IP4LS), part two
 * Olivier Burri, EPFL - SV - BIOP
 * 
 * Due to the simple nature of this code, no copyright is applicable
 * 
 * ## INSTALLATION ##
 * To run this ActionBar, you need the ActionBar PlugIn installed via its Update Site
 * Help > Update > Manage Update Sites > Choose 'IBMP-CNRS'
 * 
 * Then, you need to copy THIS FILE into your ImageJ/Fini Folder in
 * Fiji > Plugins > ActionBar
 * 
 * After you restart ImageJ, you should see this ActionBar under
 * Plugins > ActionBar > 'Shortcuts'
 * 
 */

// ActionBar is a strange beast. The below line calls ActionBar and gives it the location
// of THIS FILE
// after this, there is the very important 'exit' command. 
// This means that as far as ImageJ/Fiji is concerned, the only part of this file that gets exectuted
// is the two lines below. Anything after (The actual ActionBar code) is only read internally by ActionBar
// If you remove the 'exit' statement, you will see error messages, because the rest of the code 
// is not Macro language and thus cannot be interpreted. 
run("Action Bar","/plugins/ActionBar/Shortcuts_.ijm");
exit;


// Actionbar uses an xml-like structure to create buttons. 
// you hjave <line></line> tags that represent a row of buttons
// inside you have several <button> tags that make as many buttons as you want per line
// the 'label' is the name the button will have,
// or the hover text in case you point it to an icon file.
// The macro code that will be run for each button is enclosed on <macro></macro> tags
//
// You can make as many lines as you want and as many buttons per line as you want

<line>
<button> 1 line 1
label=Copy to System
icon=noicon
arg=<macro>
run("Copy to System");
</macro>
<button> 2 line 1
label=New Image from Clipboard
icon=noicon
arg=<macro>
run("System Clipboard");
</macro>
</line>
<line>
<button> 1 line 2
label=Add Scalebar
icon=noicon
arg=<macro>
run("Scale Bar...");
</macro>
<button> 2 line 2
label=Synchronize Windows
icon=noicon
arg=<macro>
// Opens the Synchronize Windows Command from Analyze > Tools > Synchronize Windows
run("Synchronize Windows");
</macro>
</line>
<line>
<button> 1 line 3
label=Split Channels
icon=noicon
arg=<macro>
// Runs the Image > Color > Split Channels
run("Split Channels");
</macro>
<button> 2 line 3
label=Merge Channels
icon=noicon
arg=<macro>
// Opens a merge channel window from Image > Color > Merge Channels...
run("Merge Channels");
</macro>
</line>
<line>
<button> 1 line 4
label=Close All
icon=noicon
arg=<macro>
// Closes all open images
run("Close All");
</macro>
<button> 2 line 4
label=Close Others
icon=noicon
arg=<macro>
// Closes all images except the active image
close("\\Others");
</macro>
</line>
<line>
<button> 1 line 5
label=Set Measurements
icon=noicon
arg=<macro>
// Opens the Set Measurements Window from Analyze > Set Measurements...
run("Set Measurements");
</macro>
<button> 2 line 5
label=Clear Results
icon=noicon
arg=<macro>
// Clears any existing results from the results table
run("Clear Results");
</macro>
</line>

// end of file
