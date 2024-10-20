//
//  ContentView.swift
//  Card_Game_R10
//
//  Created by Tafadzwa Alexander Razaro on 2024/10/18.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerImage = "back"
    @State var cpuImage = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-plain")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Image(playerImage)
                    Image(cpuImage)
                }
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.vertical)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.vertical)
                    }
                    Spacer()
                }
                Spacer()
                
            }
        }
    }
    
    func deal(){
        
        //Randomise the player cards
        let playerCardValue = Int.random(in: 2...14)
        playerImage = "card" + String(playerCardValue)
        
        //Randomise the cpu cards
        let cpuCardValue = Int.random(in: 2...14)
        cpuImage = "card" + String(cpuCardValue)
        
        //Increase the player score
        if playerCardValue > cpuCardValue{
            playerScore += 5
        }
        
        else if cpuCardValue > playerCardValue{
            cpuScore += 5
        }
        
        else if playerCardValue == cpuCardValue{
            playerScore += 1
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
