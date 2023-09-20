//
//  ContentView.swift
//  hangmanTestApp
//
//  Created by Ramez on 9/18/23.
//

import SwiftUI

//word chosen from the word array
var word = ""

//where the wrong letter attempts are stored
var wrongLettersArray = [Character]()

//stores the words that were already used in 1 hangman game
var usedWordsArray = [Character]()

//where I display the words and the blank question marks reprsenting the remaining letters
var displayWordArray = [Character]()

//the string I display for the user to guess
var displayWord = ""

//character that the user guesses
var guess: Character!

//



//variable assaigns WordToGuessView(), KeyBoardView() and gameManagerato GameStatwManager
var GameStateManager = WordToGuessView()
var KeyboardView = GameStateManager
var gameManager = GameStateManager





struct ContentView: View {
    var body: some View {
        VStack {
            
            var GameStateManager = WordToGuessView()
            var GameStateManager = KeyboardView()
            
            Button(action: {
                gameManager.startNewGame()
            }, label: {
                Text("Start New Game")
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            })
            .padding()
        }
        .padding()
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// WordToGuessView.swift
import SwiftUI

class HangmanGameStateManager: ObservableObject {
    // Possible words that can be selected for a new game
    var displayCharacterArray = ["PEAR", "APPLE", "CLEMENTINE", "BANANA", "BULKING", "PROTEIN", "HAPPINESS", "PROSPERITY"]
}

struct WordToGuessView: View {
    @ObservedObject var gameStateManager = HangmanGameStateManager()

    var body: some View {
        // Your view code here using gameStateManager
        Text("Hangman Game")
    }
}

        
        class RestartGame {
            
            // Properties and other methods would go here

            init() {
                startNewGame()
            }
            
            func startNewGame() {
                // The code to start a new game would go here
                print("New game started")
            }
        }

        // Usage:
        let gameManager = GameStateManager() // This will automatically call startNewGame() due to the init() method

        
        


// KeyboardView.swift

struct KeyboardView: View {
    @ObservedObject var gameManager: GameStateManager
    
    var body: some View {
        ContentView()
    }
}

// GameStateManager.swift
func startNewGame() {
    wordToGuess = .randomElement() ?? "HANGMAN"
    guessedLetters = []
    
    
    init() {
        startNewGame()
    }

}


}


class GameStateManager: ObservableObject {
    @Published var wordToGuess: String = ""
    @Published var guessedLetters: [Character] = []
    @Published var remainingLetters: [Character]
    
}

class GameStateManager: ObservableObject {
    
    
    func guessButton(_ sender: UIButton) {
        //Resign first responder textField guessTextField.resignFirstResponder()
        //Make sure the user has entered a letter but only one letter
        let guess1 = guessTextField.text
       
        if guess1
            guessTextField.placeholder = "Enter a letter"
    }
    else if guess1!.count > 1 {
        guessTextField.placeholder = "Enter one letter"
    }
    
    else {
        
        guess = Character (guessTextField.text!.capitalized)
        //Call the check for letter function
        @IBAction func resetButton(_ sender: UIButton) {
            //Reset the variables, the labels, the images
            //Pick a new random word and display it in the label
            
        }
        
    }
}

//Loop that subtracts lives left by 1 for every failed attemp

if var
