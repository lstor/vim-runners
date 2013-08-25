if exists('g:autoloaded_runners')
    finish
endif

let g:autoloaded_runners = 1

function! runners#SetCommand(command)
    if !exists('b:dispatch')
        let b:dispatch = a:command
        let &l:makeprg = a:command
    end
endf
