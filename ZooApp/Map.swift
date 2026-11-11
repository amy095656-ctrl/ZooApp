//
//  Map.swift
//  MyApp
//
//  Created by 115-1Student04 on 2026/11/10.
//

import SwiftUI
import WebKit

struct Map: View {
    var body: some View {
        WebView(url: URL(string: "https://www-ws.gov.taipei/001/Upload/432/relpic/21511/8040477/5ba5ee84-69b3-4213-bb11-0d83d58e4333.jpg"))
            .scaledToFill()
    }
}

#Preview {
    Map()
}
