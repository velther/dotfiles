My dotfiles

Bash aliases
------------

### System

*ls* `ls -f`  
*la* `ls -a`  
*ll* `ls -la`  
*m* `make`  

### Git specific

*g* `git status`  
*ga* `git add`  
*gam* `git ls-files -m | xargs git add`  
*gau* `git ls-files -o --exclude-standard | xargs git add`  
*grm* `git ls-files -d | xargs git rm`  
*gd* `git diff`  
*gdc* `git diff --cached`  
*gl* `git pull`  
*glr* `git pull --rebase`  
*gs* `git push`  
*gc* `git commit`  
*gco* `git checkout`  
*gls* `git ls-files`  
*glsu* `git ls-files -o --exclude-standard`  
*gsu* `git submodule update`  
*glg* `git log`  
*gll* `git log -1 -p`  

Git aliases
-----------
*co* `checkout`  
*ci* `commit`  
*st* `status`  
*s* `status`  
*d* `diff`  
*b* `branch`  
*f* `fetch`  
*p* `pull`  
*m* `merge`  
*a* `add`  
*cp* `cherry-pick`  
*ls* `ls-files`  
*lsu* `git ls-files -o --exclude-standard`  
