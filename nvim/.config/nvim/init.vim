" Vim script modules are sourced here.
" Lua modules are loaded via plugins/init.lua.
if has("win32")
    runtime vimScript/common.vim
    runtime vimScript/windows.vim
    runtime vimScript/searchBuiltin.vim
else
    runtime vimScript/common.vim
    runtime vimScript/plugins.vim
    runtime vimScript/searchFzf.vim
    runtime vimScript/linux.vim
endif
