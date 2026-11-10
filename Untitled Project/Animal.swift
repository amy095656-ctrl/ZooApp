//
//  Animal.swift
//  MyApp
//
//  Created by 115-1Student04 on 2026/11/10.
//
import Foundation

struct Animal: Identifiable {
    let id = UUID()
    let name: String
    let englishName: String
    let conservationStatus: String
    let funFact: String
    let imageName1: String
    let imageName2: String
    let areaName: String
}
