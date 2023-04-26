//
//  introduceView.swift
//
//  Created by Lu1sBo on 2023/4/4.

import SwiftUI

struct HomeView: View {
    
    @State private var showIntroView = false
    @State private var currentPage: Int? = 1
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("homeViewPhoto")
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing:0) {
                    VStack {
                        Text("垃圾分类通")
                            .font(.system(size: 80, weight: .heavy))
                            .bold()
                            .foregroundColor(.green)
                            .shadow(color: .gray, radius: 2, x: 0, y: 4)
                            .padding(.top, 50)
//                        Text("Aware")
//                            .font(.system(size: 80, weight: .heavy))
//                            .bold()
//                            .foregroundColor(.mint)
//                            .shadow(color: .gray, radius: 3, x: 0, y: 7)
                    }
                    Spacer()
                    VStack(spacing:255) {
                        
                        HStack {
                            NavigationLink {
                                IntroView()
                            } label: {
                                HStack {
                                    Text("关于此App")
                                }
                                .font(.system(size: 24, weight: .heavy))
                                .foregroundColor(.white)
                                .frame(maxWidth: 200, maxHeight: 65)
                                .background(Color.cyan)
                                .cornerRadius(30)
                                .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 10)
                            }
                            .padding()
                            
                            NavigationLink {
                                AppleView()
                            } label: {
                                HStack {
                                    Text("Apple的环保行动")
                                }
                                .font(.system(size: 24, weight: .heavy))
                                .foregroundColor(.white)
                                .frame(maxWidth: 250, maxHeight: 65)
                                .background(Color.cyan)
                                .cornerRadius(30)
                                .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 10)
                            }
                            .padding()
                        }
                        
                        VStack {
                            
                            HStack {
                                
                                NavigationLink {
                                    HazardousWasteView()
                                } label: {
                                    Text("有害垃圾")
                                        .font(.system(size: 27, weight: .heavy))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 80)
                                        .background(Color.cyan)
                                        .cornerRadius(30)
                                        .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 10)
                                }
                                
                                NavigationLink {
                                    RecyclableWasteView()
                                } label: {
                                    Text("可回收垃圾")
                                        .font(.system(size: 27, weight: .heavy))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 80)
                                        .background(Color.cyan)
                                        .cornerRadius(30)
                                        .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 10)
                                }
                                
                                
                                NavigationLink {
                                    OrganicWasteView()
                                } label: {
                                    Text("厨余垃圾")
                                        .font(.system(size: 27, weight: .heavy))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 80)
                                        .background(Color.cyan)
                                        .cornerRadius(30)
                                        .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 10)
                                }
                                NavigationLink {
                                    NonRecyclableWasteView()
                                } label: {
                                    Text("不可回收垃圾")
                                        .font(.system(size: 27, weight: .heavy))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 80)
                                        .background(Color.cyan)
                                        .cornerRadius(30)
                                        .shadow(color: .black.opacity(0.25), radius: 0, x: 0, y: 10)
                                }
                            }
                            .padding()
                        }
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
