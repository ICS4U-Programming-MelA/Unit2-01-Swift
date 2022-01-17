// Copyright (c) 2022 Mel Aguoth All rights reserved.
//
// Created By: Mel Aguoth
// Date: January 14, 2022
// This program reverses a string using recursion.

// Import modules.
import Foundation

func recurseString(normalString: String, reversedString: inout String) -> String {

  // Declare variables.
  var tempString = normalString

  // If the regular string is empty, return the reversed string.
  if tempString.isEmpty {
    return reversedString

  // If the regular string isn't empty, recurse it with it's first character at the end.
  } else {
    let removedChar = tempString.remove(at: tempString.startIndex)
    reversedString.insert(removedChar, at: reversedString.startIndex)
    return recurseString(normalString: tempString, reversedString: &reversedString)
  }
}

// Declare variables.
var freeSpace: String = ""

// Introduce the program.
print("This program reverses a given string using recursion.")

// Get the user's string.
print("Enter your string:", terminator: " ")
let userString: String = readLine() ?? ""

// Call recurseString.
let reverse: String = recurseString(normalString: userString, reversedString: &freeSpace)

// Display the reversed string.
print("\n" + "The reverse of '\(String(freeSpace.reversed()))' is: \(reverse)")
