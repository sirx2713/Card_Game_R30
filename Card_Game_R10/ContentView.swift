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
}

#Preview {
    ContentView()
}
