//
//  ContentView.swift
//  AITripAdvisor
//
//  Created by Yongjun Ou on 5/23/23.
//

import SwiftUI

struct ContentView: View {
    let GroupData = [
        Group(name: "Group 1", items: [
            Item(name: "Stay"),
            Item(name: "Activity"),
            Item(name: "Transportation")
        ]),
        Group(name: "Group 2", items: [
            Item(name: "Stay"),
            Item(name: "Activity"),
            Item(name: "Transportation")
        ]),
        // Add more groups as needed
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(GroupData) { group in
                    VStack {
                        Text(group.name)
                            .font(.title)
                            .padding()
                        
                        ForEach(group.items) { item in
                            Button(action: {
                                print("Item \(item.name) clicked")
                            }) {
                                Text(item.name)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
