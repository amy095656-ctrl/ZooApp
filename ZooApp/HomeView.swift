//
//  HomeView.swift
//  MyApp
//
//  Created by 115-1Student04 on 2026/11/11.
//

import Combine
import SwiftUI

struct HomeView: View {
    let newsList = [
        ZooNews(
            title: "動池動池! 來去池上住一晚~」夜宿牧野動物園",
            date: "2026/12/05-/12/06",
            category: "活動",
            imageName: "activity1"
        ),
        ZooNews(
            title: "霍斯辦案：草原謎案啟動！",
            date: "2025/12/01-2026/11/30",
            category: "特展",
            imageName: "activity2"
        ),
        ZooNews(
            title: "看你什麼嘴臉？昆蟲頭等大事特展",
            date: "2025/10/18-2027/04/30",
            category: "特展",
            imageName: "activity3"
        ),
    ]

    let featuredAnimals: [Animal] = [
        Animal(
            name: "大貓熊",
            englishName: "Giant Panda",
            conservationStatus: "易危 (VU)",
            conservationIntro: "經多年努力，保育等級已從「瀕危」降為「易危 (VU)」，但依然仰賴嚴格的棲地保護。",
            status: "開放中",
            funFact: "一天要花 10-16 小時吃竹子！",
            factIntro: "大貓熊的消化系統依然偏向肉食動物，因此牠們每天需要花費超過一半的時間大口啃食大量竹子！",
            imageName1: "panda1",
            imageName2: "panda2",
            areaName: "大貓熊館",
            areaIntro: "新光特展館（大貓熊館）擁有冷氣空調設施、戶外綠意庭園與豐富化棲架，讓大貓熊安心攀爬與覓食。"
        ),
        Animal(
            name: "石虎",
            englishName: "Leopard Cat",
            conservationStatus: "瀕危 (EN)",
            conservationIntro: "評估為「瀕危 (EN)」，在台灣面臨嚴重的路殺、路徑破碎化與農藥毒害威脅。",
            status: "開放中",
            funFact: "台灣唯一的原生貓科動物。",
            factIntro: "石虎耳後有顯著的黑底白斑，額頭有兩條白色條紋，是台灣目前唯一存活的原生野生貓科動物！",
            imageName1: "leopard_cat1",
            imageName2: "leopard_cat2",
            areaName: "臺灣動物區",
            areaIntro: "本區呈現台灣低海拔丘陵與森林生態，模擬淺山棲地，宣導人陸共存與保育理念。"
        ),
        Animal(
            name: "國王企鵝",
            englishName: "King Penguin",
            conservationStatus: "無危 (LC)",
            conservationIntro: "保育等級為「無危 (LC)」，但全球暖化對南太平洋島嶼棲地的威脅仍是未來的保育重點。",
            status: "開放中",
            funFact: "孵蛋時會放在腳掌上保暖。",
            factIntro: "國王企鵝不築巢，孵蛋時會將單顆蛋小心翼翼地放在雙腳掌上，並用下腹部的育兒褶包覆保暖！",
            imageName1: "k_penguin1",
            imageName2: "k_penguin2",
            areaName: "企鵝館",
            areaIntro: "企鵝館維持恆溫低溫環境，並配備大型水下觀察窗，呈現極地鳥類悠游與岸上活動的真實姿態。"
        ),
        Animal(
            name: "澳洲無尾熊",
            englishName: "Koala",
            conservationStatus: "易危 (VU)",
            conservationIntro: "目前保育等級為「易危 (VU)」，棲地喪失與澳洲森林大火對其野外族群帶來重大衝擊。",
            status: "開放中",
            funFact: "一天要睡 18 到 20 個小時。",
            factIntro: "因為尤加利葉（桉樹葉）營養成分與能量極低，無尾熊需要透過長時間的睡眠來消化葉子並節約體能！",
            imageName1: "koala1",
            imageName2: "koala2",
            areaName: "無尾熊館",
            areaIntro: "無尾熊館設有採光良好、通風佳的室內與戶外桉樹棲架，營造極具安全感的休養環境。"
        ),
    ]

    @State private var currentIndex = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    var body: some View {
        NavigationStack {
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
                    VStack(alignment: .leading, spacing: 24) {

                        // 1. 最新消息
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Image(systemName: "newspaper.fill")
                                    .foregroundColor(Color(red: 76/255, green: 125/255, blue: 63/255))
                                Text("最新消息")
                                    .font(.title2)
                                    .bold()
                            }
                            .padding(.horizontal)

                            TabView(selection: $currentIndex) {
                                ForEach(0..<newsList.count, id: \.self) { index in
                                    let news = newsList[index]

                                    ZStack(alignment: .bottomLeading) {
                                        Image(news.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(height: 180)
                                            .frame(maxWidth: .infinity)
                                            .clipShape(RoundedRectangle(cornerRadius: 22))

                                        LinearGradient(
                                            colors: [.black.opacity(0.75), .clear],
                                            startPoint: .bottom,
                                            endPoint: .center
                                        )

                                        VStack(alignment: .leading) {
                                            HStack {
                                                HStack(spacing: 4) {
                                                    Circle()
                                                        .fill(Color.white)
                                                        .frame(width: 5, height: 5)
                                                    Text(news.category)
                                                }
                                                .font(.caption2)
                                                .bold()
                                                .padding(.horizontal, 10)
                                                .padding(.vertical, 5)
                                                .background(Color.green)
                                                .foregroundColor(.white)
                                                .clipShape(Capsule())

                                                Spacer()

                                                HStack(spacing: 4) {
                                                    Image(systemName: "calendar")
                                                    Text(news.date)
                                                }
                                                .font(.caption2)
                                                .bold()
                                                .foregroundColor(.white)
                                                .padding(.horizontal, 10)
                                                .padding(.vertical, 5)
                                                .background(Color.black.opacity(0.6))
                                                .clipShape(Capsule())
                                            }

                                            Spacer()

                                            Text(news.title)
                                                .font(.headline)
                                                .bold()
                                                .foregroundColor(.white)
                                                .lineLimit(1)
                                        }
                                        .padding(14)
                                    }
                                    .shadow(color: .black.opacity(0.12), radius: 8, x: 0, y: 4)
                                    .padding(.horizontal)
                                    .tag(index)
                                }
                            }
                            .frame(height: 180)
                            .tabViewStyle(.page(indexDisplayMode: .always))
                            .onReceive(timer) { _ in
                                withAnimation {
                                    currentIndex = (currentIndex + 1) % newsList.count
                                }
                            }
                        }

                        // 2. 明星動物
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Image(systemName: "pawprint.fill")
                                    .foregroundColor(.orange)
                                Text("明星動物")
                                    .font(.title2)
                                    .bold()
                            }
                            .padding(.horizontal)

                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 14) {
                                    ForEach(featuredAnimals) { animal in
                                        NavigationLink {
                                            AnimalDetail(animal: animal)
                                        } label: {
                                            VStack(alignment: .leading, spacing: 8) {
                                                Image(animal.imageName1)
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 125, height: 110)
                                                    .clipShape(RoundedRectangle(cornerRadius: 14))

                                                VStack(alignment: .leading, spacing: 2) {
                                                    Text(animal.name)
                                                        .font(.headline)
                                                        .foregroundColor(.primary)

                                                    Text(animal.areaName)
                                                        .font(.caption)
                                                        .foregroundColor(.secondary)
                                                }
                                                .padding(.horizontal, 8)
                                                .padding(.bottom, 10)
                                            }
                                            .frame(width: 125)
                                            .background(Color.white)
                                            .cornerRadius(16)
                                            .shadow(color: Color.black.opacity(0.06), radius: 6, x: 0, y: 3)
                                        }
                                    }
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 4)
                            }
                        }

                        // 3. 交通指南
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Image(systemName: "map.fill")
                                    .foregroundColor(.blue)
                                Text("交通指南")
                                    .font(.title2)
                                    .bold()
                            }

                            VStack(spacing: 12) {
                                HStack(spacing: 14) {
                                    Image(systemName: "tram.fill")
                                        .font(.title2)
                                        .foregroundColor(.blue)
                                        .frame(width: 36, height: 36)
                                        .background(Color.blue.opacity(0.12))
                                        .clipShape(Circle())

                                    VStack(alignment: .leading, spacing: 3) {
                                        Text("捷運 MRT")
                                            .font(.subheadline)
                                            .bold()
                                        Text("搭乘文湖線至「動物園站」下車，步行 1 分鐘即可抵達。")
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                    }
                                }
                                .padding(12)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.white)
                                .cornerRadius(14)
                                .shadow(color: Color.black.opacity(0.04), radius: 5, x: 0, y: 2)

                                HStack(spacing: 14) {
                                    Image(systemName: "bus.fill")
                                        .font(.title2)
                                        .foregroundColor(.green)
                                        .frame(width: 36, height: 36)
                                        .background(Color.green.opacity(0.12))
                                        .clipShape(Circle())

                                    VStack(alignment: .leading, spacing: 3) {
                                        Text("公車 Bus")
                                            .font(.subheadline)
                                            .bold()
                                        Text("搭乘 236、282、295、611、棕3、棕6 等至「捷運動物園站」。")
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                    }
                                }
                                .padding(12)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.white)
                                .cornerRadius(14)
                                .shadow(color: Color.black.opacity(0.04), radius: 5, x: 0, y: 2)

                                HStack(spacing: 14) {
                                    Image(systemName: "car.fill")
                                        .font(.title2)
                                        .foregroundColor(.orange)
                                        .frame(width: 36, height: 36)
                                        .background(Color.orange.opacity(0.12))
                                        .clipShape(Circle())

                                    VStack(alignment: .leading, spacing: 3) {
                                        Text("自行開車 & 停車")
                                            .font(.subheadline)
                                            .bold()
                                        Text("國道3號木柵交流道下。可停放於動物園站地下停車場或捷運機廠停車場。")
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                    }
                                }
                                .padding(12)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.white)
                                .cornerRadius(14)
                                .shadow(color: Color.black.opacity(0.04), radius: 5, x: 0, y: 2)
                            }
                        }
                        .padding(.horizontal)

                        // 4. 園區參觀資訊
                        VStack(alignment: .leading, spacing: 14) {
                            HStack {
                                Image(systemName: "info.circle.fill")
                                    .foregroundColor(Color(red: 76/255, green: 125/255, blue: 63/255))
                                Text("園區參觀資訊")
                                    .font(.title2)
                                    .bold()
                            }

                            // 4-1. 開放時間與票價卡片
                            VStack(alignment: .leading, spacing: 14) {
                                VStack(alignment: .leading, spacing: 6) {
                                    HStack(spacing: 6) {
                                        Image(systemName: "clock.fill")
                                            .foregroundColor(Color(red: 76/255, green: 125/255, blue: 63/255))
                                        Text("開放時間")
                                            .bold()
                                            .foregroundColor(.primary)
                                    }
                                    Text("‧ 園區開放：09:00 - 17:00 (16:00 停止入園)")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    Text("‧ 展示館開放：09:00 - 16:30")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }

                                Divider()

                                VStack(alignment: .leading, spacing: 6) {
                                    HStack(spacing: 6) {
                                        Image(systemName: "ticket.fill")
                                            .foregroundColor(Color(red: 76/255, green: 125/255, blue: 63/255))
                                        Text("票價資訊")
                                            .bold()
                                            .foregroundColor(.primary)
                                    }
                                    Text("‧ 全票：NT$ 100 / 優待票：NT$ 50")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding(16)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.white)
                            .cornerRadius(16)
                            .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)

                            // 4-2. 溫馨提醒卡片
                            VStack(alignment: .leading, spacing: 8) {
                                HStack(spacing: 6) {
                                    Image(systemName: "exclamationmark.triangle.fill")
                                        .foregroundColor(.red)
                                    Text("溫馨提醒")
                                        .font(.headline)
                                        .bold()
                                        .foregroundColor(.red)
                                }

                                Text("1. 動物園「不對外開放」日期為農曆除夕 (2026年2月16日) 及 6月下旬 (2026年6月22日至7月1日)。")
                                    .font(.caption)
                                    .foregroundColor(.primary.opacity(0.8))
                                    .lineSpacing(3)

                                Text("2. 因天災 (颱風) 經臺北市政府宣布停班，為維護遊客安全，本園將於停班日休園。")
                                    .font(.caption)
                                    .foregroundColor(.primary.opacity(0.8))
                                    .lineSpacing(3)
                            }
                            .padding(16)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color(red: 254/255, green: 242/255, blue: 242/255))
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.red.opacity(0.2), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)

                    }
                    .padding(.vertical)
                }
            }
            .toolbar {
                ToolbarItem(placement: .title) {
                    Image("logo2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HomeView()
}
