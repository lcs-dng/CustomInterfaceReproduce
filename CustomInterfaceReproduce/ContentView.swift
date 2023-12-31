//
//  ContentView.swift
//  CustomInterfaceReproduce
//
//  Created by Dexter Ng on 2023-11-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                // Changing the background colour
                Color.black
                    .ignoresSafeArea()
                
                    // Top tool bar
                    .toolbar {
                        
                        ToolbarItem (placement: .topBarLeading){
                            Button(action: {}) {
                                HStack {
                                    Image(systemName: "chevron.backward")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 25)
                                    Text("Accidental Tech Podcast")
                                        .foregroundColor(.white)
                                        .font(Font.system(size: 20))
                                        .padding(.leading, 50)
                                }
                            }
                        }
                        
                    }
                    // Change the toolbar colour to Dark Grey
                    .toolbarBackground(Color("Dark Grey"), for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                
                VStack {
                    
                    // Searchbar group
                    ZStack {
                        
                        // Background colour of the searchbar
                        Rectangle()
                        Color("Dark Grey")
                            .frame(width: 400, height: 80)
                        
                        // Searchbar
                        HStack {
                            Spacer()
                                .frame(width: 23)
                            Color("Lighter Grey")
                                .frame(height: 40)
                                .cornerRadius(10)
                            Spacer()
                                .frame(width: 23)
                        }
                        
                        // Text on the searchbar
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            Text("Search")
                                .font(Font.system(size: 18))
                                .foregroundColor(.gray)
                                .offset(x: -5)
                        }
                        .padding(.trailing, 255)
                        
                    }
                    .padding(.bottom, 670)
                    
                }
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
