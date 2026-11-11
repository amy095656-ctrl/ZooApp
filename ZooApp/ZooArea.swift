//
//  ZooArea.swift
//  MyApp
//
//  Created by 115-1Student04 on 2026/11/10.
//

import Foundation
struct ZooArea: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let animals: [Animal] // 直接在館區裡包含動物陣列
}
