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
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 238/255, green: 245/255, blue: 233/255),
                    Color(red: 247/255, green: 249/255, blue: 244/255)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    // 動物名稱標題
                    VStack(spacing: 4) {
                        Text(animal.name)
                            .font(.system(size: 34, weight: .bold))
                            .foregroundColor(.primary)

                        Text(animal.englishName)
                            .font(.title3)
                            .bold()
                            .foregroundColor(Color(red: 90/255, green: 120/255, blue: 80/255))
                    }
                    .padding(.top, 4)

                    TabView {
                        Image(animal.imageName1)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 250)
                            .clipShape(RoundedRectangle(cornerRadius: 24))

                        Image(animal.imageName2)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 250)
                            .clipShape(RoundedRectangle(cornerRadius: 24))
                    }
                    .tabViewStyle(.page)
                    .frame(height: 250)
                    .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)

                    // 1. 所屬區域
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(spacing: 6) {
                            Image(systemName: "building.2.crop.circle.fill")
                                .foregroundColor(.green)
                            
                            Text("所屬區域")
                                .font(.caption)
                                .bold()
                                .padding(.horizontal, 10)
                                .padding(.vertical, 4)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                        }

                        Text(animal.areaName)
                            .font(.headline)
                            .bold()
                            .foregroundColor(.primary)

                        Text(animal.areaIntro)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineSpacing(4)
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(red: 232/255, green: 245/255, blue: 233/255))
                    .cornerRadius(18)
                    .overlay(
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color.green.opacity(0.25), lineWidth: 1)
                    )
                    .shadow(color: Color.black.opacity(0.03), radius: 5, x: 0, y: 2)

                    // 2. 保育等級
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(spacing: 6) {
                            Image(systemName: "shield.fill")
                                .foregroundColor(.blue)
                            
                            Text("保育等級區域")
                                .font(.caption)
                                .bold()
                                .padding(.horizontal, 10)
                                .padding(.vertical, 4)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                        }

                        Text(animal.conservationStatus)
                            .font(.headline)
                            .bold()
                            .foregroundColor(.primary)

                        Text(animal.conservationIntro)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineSpacing(4)
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(red: 235/255, green: 242/255, blue: 250/255))
                    .cornerRadius(18)
                    .overlay(
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color.blue.opacity(0.25), lineWidth: 1)
                    )
                    .shadow(color: Color.black.opacity(0.03), radius: 5, x: 0, y: 2)

                    // 3. 冷知識
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(spacing: 6) {
                            Image(systemName: "lightbulb.fill")
                                .foregroundColor(.orange)
                            
                            Text("冷知識")
                                .font(.caption)
                                .bold()
                                .padding(.horizontal, 10)
                                .padding(.vertical, 4)
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                        }

                        Text(animal.funFact)
                            .font(.headline)
                            .bold()
                            .foregroundColor(.primary)

                        Text(animal.factIntro)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineSpacing(4)
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(red: 254/255, green: 249/255, blue: 231/255))
                    .cornerRadius(18)
                    .overlay(
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color.orange.opacity(0.25), lineWidth: 1)
                    )
                    .shadow(color: Color.black.opacity(0.03), radius: 5, x: 0, y: 2)

                    Spacer(minLength: 20)
                }
                .padding()
            }
        }
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    NavigationStack {
        AnimalDetail(
            animal: Animal(
                name: "大貓熊",
                englishName: "Giant Panda",
                conservationStatus: "易危 (VU)",
                conservationIntro: "經多年努力，保育等級已從「瀕危」降為「易危 (VU)」，但依然仰賴嚴格的棲地保護。",
                status: "開放中",
                funFact: "一天要花 10-16 小時吃竹子！",
                factIntro: "大貓熊的消化系統依然偏向肉食動物，因此牠們每天需要花費超過一半的時間大口啃食大量竹子！",
                imageName1: "panda1",
                imageName2: "panda2",
                areaName: "新光特展館 (大貓熊館)",
                areaIntro: "新光特展館（大貓熊館）擁有冷氣空調設施、戶外綠意庭園與豐富化棲架，讓大貓熊安心攀爬與覓食。"
            )
        )
    }
}
