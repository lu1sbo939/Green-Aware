//
//  WasteData.swift
//
//
//  Created by Lu1sBo on 2023/4/16.
//

import SwiftUI

struct WasteInformation: Identifiable{
    var id = UUID()
    var wasteName: String
    var wasteDetails: String
}


let recyclableWastes = [
    
    //https://img3.fengj.com/2018/8/10/gather-2018810131783426107116654-37279tci12-g.jpg%21600big
    WasteInformation(wasteName: "纸",
                     wasteDetails: "纸是一种高度可回收的材料。人们可以通过新技术来将其制成新的纸制品以达到减少浪费和保护树木的目的。但是，受污染的纸张无法回收，并且可能会在回收过程中造成麻烦与困难。"),
    
    //https://img95.699pic.com/xsj/1d/1b/ru.jpg%21/fw/700/watermark/url/L3hzai93YXRlcl9kZXRhaWwyLnBuZw/align/southeast
    WasteInformation(wasteName: "金属",
                     wasteDetails: "金属回收是保护自然资源和减少浪费里很关键的一环。铝、铜和钢等可回收金属可以通过回收来制成新的金属回收物。不过若是对金属废料处置不当，则很有可能会导致水源与土壤的污染。"),
    
    //https://puui.qpic.cn/vpic/0/m3117gel8cy.png/0
    WasteInformation(wasteName: "手机",
                    wasteDetails: "手机在生产制造的工程中使用了许多有价值的金属材料，如金、银、铜等。回收手机不仅可以减少电子垃圾，还可以保护自然资源。但是在今天，仍有许多人使用不恰当的方式来处理手机，如丢到垃圾桶里就草草完事，导致环境危害和宝贵资源的浪费。"),
    
    //https://images.shobserver.com/news/690_390/2019/5/13/3398b566-bcc9-49c6-9187-6a2c2eed9f9a.jpg
    WasteInformation(wasteName: "塑料",
                     wasteDetails: "塑料是世界上应用最普遍的材料之一，现在随处可见它的身影，最具有代表性的便是塑料袋。由于塑料是高分子化学物，所以它很不容易在环境中降解，对环境有着极大的危害。并且还会有动物误食塑料袋后无法消化而导致死亡。因此，正确地回收塑料袋是防止污染回收里至关重要的一环。"),
    
//    https://t9.baidu.com/it/u=1682426549,783760775&fm=193
    WasteInformation(wasteName: "纺织废料",
                     wasteDetails: "纺织废料是一个日益严重的问题，每年有数百万吨的衣服和其他织物被丢弃。不过，那些如衣服之类的纺织品可以回收并重新制作成新的衣物，这有助于保护自然资源和减少浪费。除此之外，我们在日常生活中也可以清理、分类出不需要的旧衣物去捐赠。"),
    
    //https://p1.itc.cn/q_70/images03/20200605/bb6a16f7664f4ce3b01ce91d2e15c00d.png
    WasteInformation(wasteName: "玻璃",
                     wasteDetails: "玻璃在日常生活中非常常见，玻璃窗、玻璃门、啤酒瓶，无论是哪里都有它的身影。简单来说玻璃是可回收垃圾，因为它是由沙土烧制而成，所以对其进行有效地回收可以有利于资源回收。然而，废玻璃往往带有着锋利的边缘，若是回收不当则可能会划伤皮肤造成感染发炎。")
]





let HazardousWastes = [
    //https://www.qmbk.com/jingyan/UploadFiles_2374/20210810/2021081017103821.jpg
    WasteInformation(wasteName: "电池",
                     wasteDetails: "电池含有铅、镉和汞等有毒化学物质，一颗电池若是被随意丢弃在土壤中，会使得方圆几平方米的土和地下水受到重金属的污染。此外，电池还具有着易燃易爆的特性，特别是当它们损坏或暴露在高温下时更容易发生事故。因此，正确回收电池以防止环境污染并降低事故风险十分重要。"),
    
    //https://img1.baidu.com/it/u=1746266076,2206388617&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=450
    WasteInformation(wasteName: "废胶片",
                     wasteDetails: "废胶片在加工过程中因使用氰化物、重金属等有毒化学制剂而被视为危险废物，对人体健康和自然环境构成潜在风险。"),
    
    //https://img1.baidu.com/it/u=494750444,3375021890&fm=253&fmt=auto&app=138&f=JPEG?w=847&h=500
    WasteInformation(wasteName: "废药品",
                     wasteDetails: "废药由于其化学性质，会对土壤、水和空气造成严重污染。一些药物具有很强的过敏性和挥发性，而其他药物，如有毒的抗癌药物会造成严重的环境污染。此外，随意丢弃抗菌药物可能会破坏环境中菌群的平衡并增加细菌耐药性"),
    
    //https://img1.baidu.com/it/u=1150783365,341070483&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500
    WasteInformation(wasteName: "指甲油",
                     wasteDetails: "废指甲油主要含有一些化学成分，如苯甲醛、酯类、酮类、增塑剂等，易燃易爆，挥发后会产生刺激性气味，随意丢弃也会严重污染环境。"),
    
    //https://img0.baidu.com/it/u=716786106,1519180233&fm=253&fmt=auto&app=138&f=JPEG?w=700&h=467
    WasteInformation(wasteName: "灯管",
                     wasteDetails: "灯管被归类为危险废物，由于其存在灯头、玻璃外壳、荧光粉和汞等成分。汞可以吸附在灯头和玻璃外壳上，当灯管破碎时，汞会挥发到空气中，对人体健康造成危害。因此，废弃荧光灯必须妥善密封并作为危险废物处理。"),
    
    //https://img2.baidu.com/it/u=775850215,1612984888&fm=253&fmt=auto&app=138&f=JPEG?w=664&h=500
    WasteInformation(wasteName: "杀虫剂",
                     wasteDetails: "杀虫剂含有如乙醇、高毒性的化学药剂。如果处置不当，不仅会有爆炸燃烧的风险，还可能会导致土壤结节等问题。"),
]


let NonrecyclableWastes = [
    
    //https://img2.baidu.com/it/u=978996669,351553594&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375
    WasteInformation(wasteName: "瓷砖",
                     wasteDetails: "瓷砖是不可回收垃圾，它们的原材料是从粘土和破碎的沉积页岩中获得，然后经过高温煅烧才能生产出来。随着环保意识的增强，传统陶瓦的陈旧生产工艺越来越不能满足现代发展的需求，使陶瓦的未来存在被淘汰的可能性。"),
    
    //https://pic.rmb.bdstatic.com/5e2fdb4b891697d601d40988a41e00ed.jpeg
    WasteInformation(wasteName: "渣土灰",
                     wasteDetails: "渣土灰是指建筑拆除过程中产生的弃土、废物和其他碎屑的混合物。它的特点是不易降解，体积大，重量轻。"),
    
    //https://img2.baidu.com/it/u=131001315,3578687835&fm=253&fmt=auto&app=138&f=JPEG?w=480&h=360
    WasteInformation(wasteName: "烟头",
                     wasteDetails: "烟头被归类为不可回收的废物。虽然烟头中使用的聚丙烯丝束本身没有毒性，但它们会被吸烟过程中的尼古丁和其他物质以及唾液污染，使其不适合回收利用。"),
]

let OrganicWastes = [
    
    //https://www.mianfeiwendang.com/pic/de2d72b3e519a6204df1a3a7/1-332-png_6_0_0_0_0_0_0_892.979_1262.879-893-0-316-893.jpg
    WasteInformation(wasteName: "茶叶",
                     wasteDetails: "茶叶如果丢弃丢弃在户外的土壤中，可能会降低土壤的有机质含量和肥力，影响周围植物的养分吸收。"),
    
    //https://img1.baidu.com/it/u=1758845339,2552048296&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500
    WasteInformation(wasteName: "剩饭菜",
                     wasteDetails: "剩饭菜在炎热潮湿的环境中会迅速变质并吸引蚊虫，在人们食用以后很可能会导致食物中毒和肠胃不适等问题"),
    
    //https://img0.baidu.com/it/u=1812540100,117287162&fm=253&fmt=auto&app=138&f=JPEG?w=499&h=331
    WasteInformation(wasteName: "蛋壳",
                     wasteDetails: "蛋壳被认为是厨余垃圾，其化学成分包含了有机物和水。如果处理不当，它们会与其他的剩饭菜产生出难闻的气味并造成环境污染。"),
]


