let mydict = {
    \'data': [0,1,2,3]}

function mydict.len() dict
	return len(self.data)
endfunction mydict.len

function mydict.printName() dict
    echo "hello i am mydict!"
endfunction mydict.printName

function! TestPy() range

    let startline = line("'<")
    let endline = line("'>")
    echo "vim-start:".startline . " vim-endline:".endline
python << EOF
import vim
s = "I was set in python"
vim.command("let sInVim = '%s'"% s)
start = vim.eval("startline")
end = vim.eval("endline")
print "start, end in python:%s,%s"% (start, end)
EOF
    echo sInVim
endfunction
