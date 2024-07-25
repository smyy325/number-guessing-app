# Number Guessing App

This is a simple Flutter application consisting of three screens where the player attempts to guess a randomly generated number. The game has the following screens:

1. **Entry Screen**: The initial screen where the player starts the game.
2. **Guessing Screen**: The screen where the player inputs their guesses. If the guessed number is lower than the randomly generated number, a message "enter a higher number" appears, and if the guessed number is higher, a message "enter a lower number" appears.
3. **Result Screen**: The screen displaying the result, showing whether the player has won or lost.

## Screens

### Entry Screen
- The player starts the game by pressing a button.
- A random number is generated.

### Guessing Screen
- The player enters their guesses to try and match the random number.
- Displays hints if the guessed number is lower or higher than the target number.

### Result Screen
- Displays "You Won!" if the player guessed the number correctly.
- Displays "You Lost!" if the player did not guess the number.

## Demo Video

![App Video](videos/sayitahmin.mp4)

## How to Run

To run this project, ensure you have Flutter installed. Clone the repository and use the following commands in your terminal:

```sh
flutter pub get
flutter run
