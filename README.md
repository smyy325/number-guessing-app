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

## App Video and Images

![App Video](videos/sayitahmin.mp4)
![Ekran görüntüsü 2024-07-25 175032](https://github.com/user-attachments/assets/9565c33f-f8ed-4e07-8064-663494d90050)
![Ekran görüntüsü 2024-07-25 174732](https://github.com/user-attachments/assets/ea7f5c68-4c86-4c98-afe9-17c2f30d4c68)
![Ekran görüntüsü 2024-07-25 174815](https://github.com/user-attachments/assets/2e942e75-2acf-4abc-8532-05082d8f8fa7)
![Ekran görüntüsü 2024-07-25 174942](https://github.com/user-attachments/assets/749d43f8-13e5-4249-b75a-ebff647616a0)



## How to Run

To run this project, ensure you have Flutter installed. Clone the repository and use the following commands in your terminal:

```sh
flutter pub get
flutter run
