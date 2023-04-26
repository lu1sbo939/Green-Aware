//
//  WasteInfomation.swift
//
//  Created by Lu1sBo on 2023/4/16.
//

import SwiftUI

struct WasteDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    let wasteInfo: WasteInformation
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            VStack(alignment: .leading) {
                VStack() {
                    Image(wasteInfo.wasteName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 630, height: 400)
                    
//                    Divider().padding([.leading, .trailing], 10)

                    VStack(alignment: .leading) {
                        Text(wasteInfo.wasteName)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.brown)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 20)
                                                    
                        Text(wasteInfo.wasteDetails)
                            .font(.title2)
                            .foregroundColor(.brown)
                            .multilineTextAlignment(.leading)
                    }
                }
                Spacer()
                
                Text("图片来源: Baidu")
                    .font(.system(size: 15, weight: .thin))
                    .foregroundColor(.brown)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
            }
            .padding(15)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(maxWidth: 20, maxHeight: 20)
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

