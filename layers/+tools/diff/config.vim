" vim-diff-enhanced {
if has("patch-8.1.0360")
  set diffopt+=internal,algorithm:patience
else
	" started In Diff-Mode set diffexpr (plugin not loaded yet)
	if &diff
		let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
	endif
endif
" }
