function _symp_operate_case_non-recursive_link-entire --description 'Link entire directory'
	if set -q VERBOSE # Verbosity announcement
		set --append --local --export OUTPUT_PREFIX (status current-function | string split '_' | tail -n 1)':' # Append the Output-prefix with the current function name
		echo {$OUTPUT_PREFIX} 'Target Does not exist: "'{$target_path}\"
	end

	"$operate_function"_file_blend-link "$source_dir" "$target_path"
	exit 0
end
