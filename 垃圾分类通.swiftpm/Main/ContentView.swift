//
//  ContentView.swift
//
//  Created by Lu1sBo on 2023/4/16.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingPopover = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow.edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 30) {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 1), spacing: 30) {
                        NavigationLink {
                            HazardousWasteView()
                        } label: {
                            Text("有害垃圾")
                                .font(.system(size: 34, weight: .regular))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 150)
                                .background(Color.cyan)
                                .cornerRadius(20)
                                .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 15)
                        }
                        
                        NavigationLink {
                            RecyclableWasteView()
                        } label: {
                            Text("可回收垃圾")
                                .font(.system(size: 34, weight: .regular))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 150)
                                .background(Color.cyan)
                                .cornerRadius(20)
                                .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 15)
                        }
       
                        NavigationLink {
                            OrganicWasteView()
                        } label: {
                            Text("厨余垃圾")
                                .font(.system(size: 34, weight: .regular))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 150)
                                .background(Color.cyan)
                                .cornerRadius(20)
                                .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 15)
                        }
                        
                        NavigationLink {
                            NonRecyclableWasteView()
                        } label: {
                            Text("不可回收垃圾")
                                .font(.system(size: 34, weight: .regular))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 150)
                                .background(Color.cyan)
                                .cornerRadius(20)
                                .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 15)
                        }
                    }
                    .padding()
                }
                .padding()
                .navigationTitle("内容")
            }
        }
        .navigationViewStyle(.stack)
    }
}
