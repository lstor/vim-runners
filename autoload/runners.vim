if exists('g:autoloaded_runners')
    finish
end

let g:autoloaded_runners = 1

function! runners#SetCommand(command)
    if !exists('b:dispatch')
        let b:dispatch = a:command
        let &l:makeprg = a:command
    end

    if !exists('g:runner_no_mappings')
        nnoremap <silent> <Leader><Leader>r :!<C-r>=b:dispatch<CR><CR>
    end
endf
