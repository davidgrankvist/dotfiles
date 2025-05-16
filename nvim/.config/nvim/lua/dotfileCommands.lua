-- Set up commands to go to dotfiles or init.vim
local createCommand = vim.api.nvim_create_user_command
local commandOpts = { nargs = 0 }

if vim.fn.has("win32") then
    -- $MYVIMRC doesn't follow symlinks, so specify path via $HOME instead
    local dotfilesPath = "$HOME\\source\\repos\\dotfiles"
    local nvimPath = dotfilesPath .. "\\nvim\\.config\\nvim"

    createCommand("Godot", function()
        vim.cmd("tabnew " .. dotfilesPath .. " | lcd " .. dotfilesPath .. "  | Ex")
    end, commandOpts);

    createCommand("Govim", function()
        vim.cmd("tabnew " .. nvimPath .. " | lcd " .. nvimPath .. " | Ex")
    end, commandOpts)

    createCommand("Sovim", function()
        vim.cmd("so $MYVIMRC")
    end, commandOpts)
else
    createCommand("Godot", function()
        vim.cmd("tabnew $MYVIMRC | lcd %:h/../../.. | e `pwd`")
    end, commandOpts);

    createCommand("Govim", function()
        vim.cmd("tabnew $MYVIMRC | lcd %:h:p")
    end, commandOpts);

    createCommand("Sovim", function()
        vim.cmd("so $MYVIMRC")
    end, commandOpts);
end
