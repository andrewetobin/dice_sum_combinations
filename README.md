# Dice sum combinations

Create a method that takes three arguments.
1. number of dice
2. number of sides for each die(the same for all)
3. sum you want the rolled dice to equal

  ```
  def your_method(number_of_dice, sides, sum)
    # your magic here
  end
  ```
For an example we'll use 3 dice, each die has 6 sides, the sum we want the dice to equal is ten.``(3, 6, 10)``

We want to find all the different rolled combinations that equal 10. Different orders of the same numbers are also included. ``1 + 3 + 6 = 10``. So does ``6 + 3 + 1``,``6 + 1 + 3``, ``3  + 6 + 1``, ``1 + 6 + 3``, and ``3 + 1 + 6``.

Output should be an array of all the different combinations. 
