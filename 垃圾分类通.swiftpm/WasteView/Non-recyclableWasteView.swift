//
//  Non-recyclable Waste.swift
//
//  Created by Lu1sBo on 2023/4/16.
//

import SwiftUI

struct NonRecyclableWasteView: View {
    
    @State private var isShowingSheet = false
    @State private var selectedWaste: WasteInformation? = NonrecyclableWastes.first
    
    var body: some View {
        NavigationView {
            List(NonrecyclableWastes) { waste in
                Button(action: {
                    selectedWaste = waste
                    isShowingSheet = true
                }) {
                    HStack {
                        Image(waste.wasteName)
                            .resizable()
                            .frame(width: 230, height: 150)
                            .foregroundColor(.blue)
                        Text(waste.wasteName)
                            .font(.system(size: 40, weight: .semibold))
                            .padding()
                    }
                    .padding(30)
                }
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarTitle("不可回收垃圾")
        .sheet(isPresented: $isShowingSheet) {
            if let selectedWaste = selectedWaste {
                WasteDetailsView(wasteInfo: selectedWaste)
                    .padding()
                    .onTapGesture {
                        isShowingSheet = true
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}
