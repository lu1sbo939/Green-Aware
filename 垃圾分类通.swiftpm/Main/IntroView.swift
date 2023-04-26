//
//  WasteDetailsView.swift
//
//
//  Created by Lu1sBo on 2023/4/16.
//


import SwiftUI

struct IntroView: View {
    @State var pageSelection: Int = 1
    
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea(.all, edges: .vertical)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            TabView(selection: $pageSelection) {
                IntroduceTemplateView(introduceTitle: "简介",
                                      introduceText: "欢迎来到垃圾分类通Green Aware，这个App通过清晰简单的示例来向您展示不同类型的废物垃圾，旨在提高您对废物分类的认识。除此之外，它还提供了有用的信息，以帮助您采用更环保的生活方式。",
                                      introducePage: 1,
                                      pageSelection: $pageSelection)
                    .tag(1)
                IntroduceTemplateView(introduceTitle: "设计理念",
                                      introduceText: "垃圾的产生是不可避免的，但人类在如何更好地处理垃圾方面有很多选择。通过垃圾分类，可以实现垃圾填埋场的填埋、焚烧、回收利用，可以有效减少垃圾的土地占用和环境污染，还可以实现部分资源的循环利用。但是，目前实施垃圾分类的难点之一在于人们的意识和理念。正所谓“前人栽树后人乘凉”，因此我想通过这个APP来普及垃圾分类，让人们明白垃圾分类不仅仅是为了自己，更是为了子孙后代。",
                                      introducePage: 2,
                                      pageSelection: $pageSelection)
                    .tag(2)
                IntroduceTemplateView(introduceTitle: "应用介绍",
                                      introduceText: "这个App里的背景图片为我自己创作的手绘图，但也包括部分网络图片。你可以在主页看到“GreenAware”两个有关于背景介绍的按钮。此外，在主页的下半部分可以看到四个垃圾桶。这四个垃圾箱对应以下四种类型的垃圾分类：“有害垃圾”、“可回收垃圾”、“厨余垃圾”和“不可回收垃圾”，点击后可以看到相关内容。",
                                      introducePage: 3,
                                      pageSelection: $pageSelection)
                    .tag(3)
                IntroduceTemplateView(introduceTitle: "总结",
                                       introduceText: "最后，希望这个App能让你对垃圾分类有更多的了解和思考。此外，也希望我们能一起加入垃圾分类的大活动，为美丽的绿色地球家园贡献出一份属于自己的力量！",
                                       introducePage: 4,
                                       pageSelection: $pageSelection)
                    .tag(4)
            }
            .transition(.slide)
            .tabViewStyle(.page)
            .padding(.bottom, 30)
            .ignoresSafeArea(.all, edges: .vertical)
        }
    }
}

struct IntroduceTemplateView: View {

    @Environment(\.presentationMode) var presentationMode
    
    var introduceTitle: String
    var introduceText: String
    var introducePage: Int
    @Binding var pageSelection: Int
    
    var body: some View {
        VStack {
            
            Text(introduceTitle)
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding(.leading)
        
            Image("about\(introducePage)")
                .resizable()
                .scaledToFit()
            
            
            VStack {
                Text(introduceText)
                    .bold()
                    .font(.system(size: 23, weight: .semibold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding(.leading, 80)
                    .padding(.trailing, 80)
                    Spacer()
                
                Button {
                    if(pageSelection == 4) {
                        presentationMode.wrappedValue.dismiss()
                    } else {
                        withAnimation {
                            pageSelection += 1
                        }
                    }
                } label: {
                    HStack{
                        Text(pageSelection == 4 ? "返回到主页" : "下一页")
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
