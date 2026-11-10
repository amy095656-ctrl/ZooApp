//
//  AnimalDetail.swift
//  MyApp
//
//  Created by 115-1Student04 on 2026/11/10.
//

import SwiftUI

struct AnimalDetail: View {
    let animal: Animal

    var body: some View {
        VStack(spacing: 10) {
            Text(animal.name).font(.largeTitle).bold()
            Text(animal.englishName).font(.title3).bold().foregroundColor(.white)
            
            TabView{
                Image(animal.imageName1)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 25))
                
                Image(animal.imageName2)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 25))
            }
            .tabViewStyle(.page)
            .frame(height: 250) //明確指定 TabView 的高度限制
            

            VStack(alignment: .leading, spacing: 12) {
                Text("所屬區域")
                    .padding(10)
                    .background(Color(red: 237/255, green: 218/255, blue: 94/255), in: .rect(cornerRadius: 20))
                Text(animal.areaName)
                Text("保育等級區域")
                    .padding(10)
                    .background(Color(red: 237/255, green: 218/255, blue: 94/255), in: .rect(cornerRadius: 20))
                Text(animal.conservationStatus)
                Text("冷知識")
                    .padding(10)
                    .background(Color(red: 237/255, green: 218/255, blue: 94/255), in: .rect(cornerRadius: 20))
                Text(animal.funFact)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.white)
            .cornerRadius(12)
    
            Spacer()
            
        }
        .padding()
        .scrollContentBackground(.hidden)
        .background(Color(red: 163/255, green: 193/255, blue: 77/255))
    }
}

#Preview {
    NavigationStack {
        AnimalDetail(
            animal: Animal(
                name: "大貓熊",
                englishName: "Giant Panda",
                conservationStatus: "易危 (VU)",
                funFact: "大貓熊一天要花 10-16 小時吃竹子！",
                imageName1: "panda",imageName2: "panda",
                areaName: "新光特展館 (大貓熊館)"
            )
        )
    }
}
