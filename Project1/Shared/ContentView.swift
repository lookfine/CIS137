// Assignnment: Project 1
// Partners' Names: Chiarong Lee, Chia-Ling Yeh
// Date: 09-18-2021

import SwiftUI

// Create two arrays containing dog data
var dogNames: [String] = ["Airedale Terrier", "American Foxhound", "Dutch Shepherd", "Havanese", "Leonberger", "Mudi"]

var dogDesc: [String] = [
    "The Airedale stands among the world's most versatile dog breeds and has distinguished himself as hunter, athlete, and companion.",
    "American Foxhounds are good-natured, low-maintenance hounds who get on well with kids, dogs, even cats, but come with special considerations for prospective owners.",
    "The Dutch Shepherd is a lively, athletic, alert and intelligent breed, and has retained its herding instinct for which it was originally developed.",
    "Havanese, the only dog breed native to Cuba, are vivacious and sociable companions and are especially popular with American city dwellers.",
    "The Leonberger is a lush-coated giant of German origin. They have a gentle nature and serene patience and they relish the companionship of the whole family.",
    "The Mudi is an extremely versatile, intelligent, alert, agile, all-purpose Hungarian farm dog. The breed is a loyal protector of property and family members without being overly aggressive.",
]

// Create a dictionary composed of the two arrays
var dogData: [String: String] = Dictionary(uniqueKeysWithValues: zip(dogNames, dogDesc))

struct ContentView: View {
    
    // Declare variable to store the name of the dog tap-selected
    @State private var dog: String? = ""
    
    var body: some View {
        // Combination of VStack and HStack to display images and Text Views
        VStack {
            // Hint of onTapGesture function
            Text("Tap on the dog to see description")
            HStack{
                // Access image useing names stored in the dagNames array
                Image(dogNames[0])
                    .resizable()
                    .scaledToFit()
                    // Assign the name of the dog tapped to the variable dog
                    .onTapGesture {
                        dog = dogNames[0]
                    }
                Image(dogNames[1])
                    .resizable()
                    .scaledToFit()
                    .onTapGesture {
                        dog = dogNames[1]
                    }
            }
            HStack{
                Image(dogNames[2])
                    .resizable()
                    .scaledToFit()
                    .onTapGesture {
                        dog = dogNames[2]
                    }
                Image(dogNames[3])
                    .resizable()
                    .scaledToFit()
                    .onTapGesture {
                        dog = dogNames[3]
                    }
            }
            HStack{
                Image(dogNames[4])
                    .resizable()
                    .scaledToFit()
                    .onTapGesture {
                        dog = dogNames[4]
                    }
                Image(dogNames[5])
                    .resizable()
                    .scaledToFit()
                    .onTapGesture {
                        dog = dogNames[5]
                    }
            }
            // Display the description of the dog that was tapped
            // Set the default valut the "" if no dog has been tapped
            Text(dogData[dog!, default: ""])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

