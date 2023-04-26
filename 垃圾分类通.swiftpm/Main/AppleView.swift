//
//  WasteDetailsView.swift
//
//
//  Created by Lu1sBo on 2023/4/16.
//


import SwiftUI

struct AppleView: View {
    @State var pageSelection: Int = 1
    
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea(.all, edges: .vertical)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            TabView(selection: $pageSelection) {
                AppleTemplateView(appleText: "Apple这么多年以来一直致力于环境保护和应对气候变化。他们优先考虑使用可持续材料和能源，并采用更智能的化学工艺来最大限度地减少碳排放并减少废物产生，所有的努力都是为了达到他们的环境目标。", applePage: 1, pageSelection: $pageSelection)
                    .tag(1)
                
                AppleTemplateView(appleText: "Apple致力在2030年实现碳中和。在应对气候变化的过程中，Apple一直走在前列，并且在五个关键领域中不断努力来解决其碳足迹问题：低碳设计、能源效率、可再生电力、直接减排和碳中和。在无数员工与合作公司的努力下，Apple 在 2021 财年里成功减少了超过 2300 万吨的碳排放量。", applePage: 2, pageSelection: $pageSelection)
                    .tag(2)
                
                AppleTemplateView(appleText: "生产离不开资源，就像鱼离不开水一样。为了优化资源利用，Apple 在三个关键领域发力：材料、水和零垃圾填埋。并且由于通过实现铝、锡、钨、钴和稀土元素等关键材料的100%的回收，Apple在可持续发展方面又迈出了令人惊叹的一大步。此外，Apple还采用了高效的节水技术和回收系统，显著地减少其在全球业务的用水量。最后，Apple为了确保适当的废物分类和回收，他们还制定了全球零废物计划并应用于其各种生产线中。", applePage: 3, pageSelection: $pageSelection)
                    .tag(3)
                
                AppleTemplateView(appleText: "Apple通过采购回收可再生材料以外还使用安全、高性能和环保的化学品来为其产品开发循环供应链。并且，Apple还努力减少潜在的有害化学物质，并为供应链中的工人提供安全健康的工作环境。在这些不断的努力下，Apple不仅为其产品的循环供应链产生了新的环保赋能，保障了全体员工的身体健康，而且还尽可能地保护了我们地球家园免受各种垃圾的负面影响。", applePage: 4, pageSelection: $pageSelection)
                    .tag(4)
                
                AppleTemplateView(appleText: "", applePage: 5, pageSelection: $pageSelection)
                    .tag(5)
            }
            .transition(.slide)
            .tabViewStyle(.page)
            .padding(.bottom, 30)
            .ignoresSafeArea(.all, edges: .vertical)
        }
    }
}

struct AppleTemplateView: View {

    @Environment(\.presentationMode) var presentationMode
    
    var appleText: String
    var applePage: Int
    @Binding var pageSelection: Int
    
    var body: some View {
        VStack {
            
            Image("page\(applePage)")
                .resizable()
                .scaledToFit()
            
            Text("Source: https://www.apple.com/environment/pdf/Apple_Environmental_Progress_Report_2022.pdf")
                .font(.footnote)
                .fontWeight(.regular)
                .foregroundColor(Color.white)
            
            VStack {
                Text(appleText)
                    .bold()
                    .font(.system(size: 23, weight: .semibold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding(.leading, 80)
                    .padding(.trailing, 80)
                
                Spacer()
                
                Button {
                    if(pageSelection == 5) {
                        presentationMode.wrappedValue.dismiss()
                    } else {
                        withAnimation {
                            pageSelection += 1
                        }
                    }
                } label: {
                    HStack{
                        Text(pageSelection == 5 ? "返回主页" : "下一页")
                    }
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: 200, maxHeight: 50)
                    .background(Color.yellow)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.25),
                        radius: 0, x: 0, y: 15)
                }
            }
            .padding(10)
            .padding(.bottom, 40)
            .frame(maxHeight: UIScreen.main.bounds.height / 2.8)
        }
    }
}
