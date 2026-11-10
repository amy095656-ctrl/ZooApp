//
//  ZooAreLIst.swift
//  MyApp
//
//  Created by 115-1Student04 on 2026/11/11.
//

import SwiftUI

struct ZooAreaList: View {
    let zooAreas = [
        ZooArea(
            name: "新光特展館 (大貓熊館)",
            category: "室內展示館",
            openHours: "09:00 - 17:00",
            isOutdoor: false,
            bannerImages: "panda_banner",
            animals: [
                Animal(name: "大貓熊", englishName: "Giant Panda", conservationStatus: "易危 (VU)", funFact: "一天要花 10-16 小時吃竹子！", imageName1: "panda1", imageName2: "panda2", areaName: "新光特展館"),
                Animal(name: "小貓熊", englishName: "Red Panda", conservationStatus: "瀕危 (EN)", funFact: "會用毛茸茸的大尾巴保暖。", imageName1: "redpanda1", imageName2: "redpanda2", areaName: "新光特展館")
            ]
        ),
        ZooArea(
            name: "熱帶雨林區 (穿山甲館)",
            category: "室內/室外複合館",
            openHours: "09:00 - 17:00",
            isOutdoor: true,
            bannerImages: "pangolin_banner",
            animals: [
                Animal(name: "中華穿山甲", englishName: "Chinese Pangolin", conservationStatus: "極危 (CR)", funFact: "沒有牙齒，靠胃磨碎食物！", imageName1: "pangolin1", imageName2: "pangolin2", areaName: "熱帶雨林區"),
                Animal(name: "水豚", englishName: "Capybara", conservationStatus: "無危 (LC)", funFact: "世界上體型最大的齧齒類動物。", imageName1: "capybara1", imageName2: "capybara2", areaName: "熱帶雨林區")
            ]
        ),
        ZooArea(
            name: "兩棲爬蟲動物館",
            category: "室內展示館",
            openHours: "09:00 - 17:00",
            isOutdoor: false,
            bannerImages: "reptile_banner",
            animals: [
                Animal(name: "亞達伯拉象龜", englishName: "Aldabra Giant Tortoise", conservationStatus: "易危 (VU)", funFact: "壽命可超過 150 歲！", imageName1: "tortoise1", imageName2: "tortoise2", areaName: "兩棲爬蟲動物館")
            ]
        )
    ]

    var body: some View {
        NavigationStack {
                    List {
                        // 外層：巡迴每個館區，直接當作一個 Section
                        ForEach(zooAreas) { area in
                            Section(header:
                                VStack(alignment: .leading, spacing: 4) {
                                    HStack {
                                        Text(area.isOutdoor ? "🌿 \(area.name)" : "🏛️ \(area.name)")
                                            .font(.headline)
                                            .foregroundColor(.primary)
                                        Spacer()
                                        Text("🕒 \(area.openHours)")
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                    }
                                    Text(area.category)
                                        .font(.caption2)
                                        .padding(.horizontal, 6)
                                        .padding(.vertical, 2)
                                        .background(Color.orange.opacity(0.15))
                                        .cornerRadius(4)
                                }
                                .padding(.vertical, 4)
                            ) {
                                // 內層：直接列出該館區下的動物，點擊連至 AnimalDetail
                                ForEach(area.animals) { animal in
                                    NavigationLink {
                                        AnimalDetail(animal: animal)
                                    } label: {
                                        HStack(spacing: 12) {
                                            Image(systemName: "pawprint.circle.fill")
                                                .font(.title2)
                                                .foregroundColor(.orange)
                                            
                                            VStack(alignment: .leading, spacing: 2) {
                                                Text(animal.name)
                                                    .font(.body)
                                                    .bold()
                                                Text(animal.englishName)
                                                    .font(.caption)
                                                    .foregroundColor(.secondary)
                                            }
                                            
                                            Spacer()
                                            
                                            Text(animal.conservationStatus)
                                                .font(.caption)
                                                .foregroundColor(.red)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .navigationTitle("尋找園區")
                    .listStyle(.insetGrouped)
            // 使用分組樣式讓各館區區隔更清晰
        }
    }
}

#Preview {
    ZooAreaList()
}

