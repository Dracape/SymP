function _symp_operate_file_verify_writability --description 'Verify that the source is a directory'
	set --append --local --export OUTPUT_PREFIX (status current-function | string split '_' | tail -n 1)': ' # Append the Output-prefix with the current function name

	for file_path in {$argv}
		# Check for parent-directory if target is not a directory
		if ! path is -d {$file_path}
			if set -q VERBOSE # Verbosity announcement
				echo {$OUTPUT_PREFIX} 'testing for parent directory of non-directory file '\"{$file_path}\"': '(path dirname {$file_path})
			end
			set --function file_path (path dirname {$file_path})
			set --erase --local argv
		end

		# Check permissions
		if ! path is --perm=write --perm=exec {$file_path}
			echo {$OUTPUT_PREFIX} 'Unwritable directory: '"$file_path" 1>&2
			exit 1
		end
	end
end
