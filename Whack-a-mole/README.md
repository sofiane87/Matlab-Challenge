# Whack-a-Mole / Lights-out Game:

## Aim :
This repository had two main objectives :
* to implement a simple looking, playable, whack a mole game
* to implement an algorithm able to **solve the grid** : The solving algorithm was based on the algebraic solution that can be seen [**here**](https://www.math.ksu.edu/math551/math551a.f06/lights_out.pdf)

## The Code :

The following .m files are available : 
*	**check_is _solvable** : function that takes a grid as input and returns True if a solution for this situation exists
*	**display_board** : is the function that is partially responsible for the simplistic gui part it displays the board on the screen
*	**g2rref** : [Coded by mathworks] produces the reduced row echelon form of a matrix A
*	**init_game** : initialize the board according to the size of the board specified and the number of initial number of moles specified [default is random] by choosing a solvable matrix
*	**solve_grid** : this function returns the list of movements or bits to filp to solve the game
*	**start_game.m** : this is the main function that runs either the game or automatic solving process

## How to try it:
*	open **Matlab**
*	type in the terminal :
	```Matlab
	cd [path-to-repo]/Whack-a-mole/
	``` 
*	to run the **solving mode** : type in
	```Matlab
	start_game(dimension_of_the_grid,1)
	``` 
*	to play whack a mole /lights out yourself :
	```Matlab
	start_game(dimension_of_the_grid)
	``` 