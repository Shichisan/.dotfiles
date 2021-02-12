function cd
  builtin cd $argv
  ls -la
end

function history
  builtin history --show-time='%Y/%m/%d %H:%M:%S ' | sort
end

