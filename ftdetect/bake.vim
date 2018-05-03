" Vim ftdetect file
" Language:     Bake
" Maintainer:   Felix Obenhuber <felix@obenhuber.de>
" Last Change:  12-Nov-2016
" Version:      0.1

if did_filetype()
    finish
endif

au BufRead,BufNewFile bakefile,Adapt.meta setfiletype bake | set filetype=bake
au BufRead,BufNewFile bakefile,Collection.meta setfiletype bake | set filetype=bake
au BufRead,BufNewFile bakefile,Project.meta setfiletype bake | set filetype=bake
