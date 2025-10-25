function _symp_help-text
	echo 'Populate TARGET with the least amount of symbolic links as possible from SOURCE_DIR.'\n
	set_color --bold --underline; echo -n 'Usage:'; set_color normal; echo ' '"$script_name"' [OPTION] SOURCE_DIR TARGET'\n
	set_color --bold --underline; echo 'Arguments:'; set_color normal; echo \t'<paths>…'\n


	set_color --bold --underline; echo 'Options:'
	set_color --bold normal; echo -n -- '  -h'; set_color normal; echo -n ', '; set_color --bold; echo -- '--help'
	set_color normal; echo \t'Print help'
	
	set_color --bold; echo -n -- '  -v'; set_color normal; echo -n ', '; set_color --bold; echo -- '--verbose'
	set_color normal; echo -n \t'Show more information'\n\t'(Environment: '; set_color --italics; echo -n 'VERBOSE'; set_color normal; echo \)
	
	set_color --bold; echo -n -- '  -o '; set_color normal; echo -n '['; set_color --bold; echo -n 'c'; set_color normal; echo -n '|'; set_color --bold; echo -n 'u'; set_color normal; echo -n '], '; set_color --bold; echo -n -- '--occurrence'; set_color normal; echo -n ' ['; set_color --bold; echo -n 'common'; set_color normal; echo -n '|'; set_color --bold; echo -n 'unique'; set_color normal; echo ']'
	set_color normal; echo \t'Filter files based on their occurrences'

	set_color --bold; echo -n -- '  -O '; set_color normal; echo -n '['; set_color --bold; echo -n 'i'; set_color normal; echo -n '|'; set_color --bold; echo -n 'f'; set_color normal; echo -n '], '; set_color --bold; echo -n -- '--overwrites'; set_color normal; echo -n ' ['; set_color --bold; echo -n 'interactive'; set_color normal; echo -n '|'; set_color --bold; echo -n 'force'; set_color normal; echo ' (default)]'
	echo \t'Change behaviour for overwrites'
	echo -n \t'(Environment: '; set_color --italics; echo -n 'INTERACTIVE'; set_color normal; echo \)
	
	set_color --bold; echo -n -- '  -b'; set_color normal; echo -n ', '; set_color --bold; echo -- '--blend'
	set_color normal; echo \t'Inherit permissions of the new parent'



	if set -q VERBOSE
		set_color --bold --underline; echo \n'Variables:'
		set_color --bold normal; echo '  VERBOSE'
		set_color normal; echo \t'Show more information'
		set_color normal; echo -n \t'(Switch: '; set_color --italics; echo -n -- '-v';set_color normal; echo -n ', ';set_color --italics ; echo -n -- '--verbose' ; set_color normal; echo \)
	
		set_color --bold normal; echo '  OUTPUT_PREFIX'
		set_color normal; echo \t'Change default output stream prefix'

		set_color --bold normal; echo '  INTERACTIVE'
		set_color normal; echo \t'Confirm overwrites interactively'
		echo -n \t'(Switch: '; set_color --italics; echo -n -- '--[b|overwrites]=[i|interactive]'; set_color normal; echo \) 
	end
end
