function _smart-symlink_operate_case_recursive_operate-on-children_overwrite --description 'Forcefully remove the target item (if it exists) and overwrite it with the source item'
	set --append --local --export OUTPUT_PREFIX (status current-function | string split '_' | tail -n 1)':' # Append the Output-prefix with the current function name


	# Parse arguments
	if test (count {$argv}) -ne 2
		echo {$OUTPUT_PREFIX} 'Invalid number of arguments' 1>&2
		return 1
	end
	set --local source_item {$argv[1]}
	set --local target_item {$argv[2]}

	"$operate_function"_file_remove "$target_item" # Remove target item if it exists
	"$operate_function"_file_blend-link "$source_item" "$target_item"
end
