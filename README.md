# hangmanMatlab

A simple game of hangman made via MATLAB.

The rules of the game are simple.

Guess the correct word before time runs out.
If you make more than 6 incorrect tries then the man is drawn & hence you lose the game.

TECHNICAL STUFF HERE:
This made my matlab guide, it hangman being drawn is a simple graph.
The head is circle made by : x = rcos(th) & y = rsin(th) & plot them, the rest of the bars are just simple 2x1 vectors.
The bar of the hangman is drawn as soon as the code is run & all the words that are in the game are imported from the word.txt file
once the player clicks on the new word,
the generator function is activated, which redraws the hangman bars (because the game needs to be reset to the beginning) & the timer starts to tick.
the generator selects a random word from the array of imported words from words.txt, once a random word has been chosen, it divides the word into 2 equal halves, where a letter is chosen randomly from each half.
These selected letters are then displayed to the user to guess, the lenght of the word should be at least a minimum of lenght 3, there is not backup incase you insert a word shorter than that.
Apart from the 2 selected letters, all others are replaced by '-'.

The user can now begin to guess the word.
The keyboard layout of the gui is in abcde format, for experienced typers, open the comments in the end to activate keyboard input to get a standart qwerty input.

As soon as a button is clicked upon it is deactivated, regardless being right or wrong.
If the player is right, the correct letter will appear instead of the '-'.
If the player is wrong, the hangman will be drawn one by one.
As soon as the hangman diagram is complete the player has lost & game over is displayed.
click on new word to restart the game with another word.

the other condition of loss is timeout, if the player is unable to answer within 30 secs, the game will force shut it down.
If the player wins, his/her score is calculated as :
10 - no of incorrect tries - (time taken /10)

Enjoy the Game & the code.

-Samridh Tuladhar.
Made by my team :D
