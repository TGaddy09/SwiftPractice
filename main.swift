//
//  main.swift
//  BlackJack
//
//  Created by Tyler on 3/17/21.
//  Copyright © 2021 Tyler. All rights reserved.
//

import Foundation
var yourCards = [Int]()
var total = 0
var answer:String?
//Card letters/abbreviations
var cards = ["AC","AS","AH","AD","1C","1S","1H","1D","2C","2S","2H","2D","3C","3S","3H","3D","4C","4S","4H","4D","5C","5S","5H","5D","6C","6S","6H","6D","7C","7S","7H","7D","8C","8S","8H","8D","9C","9S","9H","9D","JC","JS","JH","JD","QC","QS","QH","QD","KC","KS","KH","KD"]
//Assumption that Ace (A) is worth 1 point
var values = [1,1,1,1,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10]
//Draw initial 2 cards
func drawCards(){
    yourCards += [Int.random(in: 0...51)]
    yourCards += [Int.random(in: 0...51)]}
//Print your hand and their values
func printCards(){
    for item in yourCards{
        print("You have a card " + cards[item] + " which is worth " , values[item] )
    }
}
//Sum and print your hands total
func totalCards(){
    total = 0
    for item in yourCards{
        total += values[item]
    }
    print("Your total is " , total)
}
//Draw another card we asked by player
func drawOneCard(){
        yourCards = [Int.random(in: 0...51)]
    }
//Main Game
drawCards()
repeat{
    printCards()
    totalCards()
    //If hand totals less than 21 ask the player if they want another card
    if (total<21){
        print("Would you like another? y/n")
    }
    else{
        print("You broke out")
        
    }
    //Take players input if they would like another card
    answer = readLine()
    if answer == "y" || answer == "Y"{
        drawOneCard()
        
    }
   
}while answer == "y" || answer == "Y"

//Player does not want another card
if answer == "n" || answer == "N"{
    print("You stand")
}

