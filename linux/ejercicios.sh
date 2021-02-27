#!/bin/bash
if [[ $# <  1 ]]; then
        echo "no se ha metido parametro"
        mkdir -p foo/{dummy,empty}
        touch foo/dummy/file1.txt
        touch foo/dummy/file2.txt
        sudo chmod +wx foo/dummy/file1.txt
		echo "me encanta el bash" |sudo tee -a foo/dummy/file1.txt
        sudo cat foo/dummy/file1.txt > foo/dummy/file2.txt
        sudo mv foo/dummy/file2.txt foo/empty/

else
      echo "se ha metido $@ como parametro"
        mkdir -p foo/{dummy,empty}
        touch foo/dummy/file1.txt
        touch foo/dummy/file2.txt
        sudo chmod +wx foo/dummy/file1.txt
		echo "$@" |sudo tee -a foo/dummy/file1.txt  
        sudo cat foo/dummy/file1.txt > foo/dummy/file2.txt
		sudo mv foo/dummy/file2.txt foo/empty/
        
fi