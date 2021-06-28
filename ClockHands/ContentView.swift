//
//  ContentView.swift
//  ClockHands
//
//  Created by Steven Lipton on 6/28/21.
//

import SwiftUI
/// Initial time at start of app
let startDate = Date()

struct ContentView: View {
    /// Seconds component of current time
    var seconds:Int{
        Calendar.current.dateComponents([.second], from: Date()).second ?? 0
    }
    /// Minutes component of current time
    var minutes:Int{
        Calendar.current.dateComponents([.minute], from: Date()).minute ?? 0
    }
    
    /// Hours component of current time
    var hours:Int{
        Calendar.current.dateComponents([.hour], from: Date()).hour ?? 0
    }
    
    var body: some View {
        VStack{
            VStack{
                Text("A TimerView Demo").bold()
                
            }
            .font(.title)
            .padding()
            .background(.thinMaterial, in: Capsule())
            .padding()
           
                ZStack{
                    WatchHand(unit: .seconds, value: .constant(seconds), length: 375)
                        .foregroundColor(.blue)
                    WatchHand(unit: .minutes, value: .constant(minutes) , length: 300)
                        .foregroundStyle(.green)
                    WatchHand(unit: .hours, value: .constant(hours) , length: 200)
                        .foregroundStyle(.red)
                }
            
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

