Array=(emacs bash_profile)

for taco in ${Array[@]}
	do
		cp ~/.$taco ~/backup 2>> errors.txt
		mv ~/.$taco ~/oldfiles 2>> errors.txt
		echo $taco
		ln -s $HOME/dotfiles/$taco $HOME/.$taco 2>> errors.txt
done
