//
//  ProductModel.swift
//  yc_Touchdown
//
//  Created by yc on 2023/08/24.
//

import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var backgroundColor: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var formattedPrice: String {
        return "$\(price)"
    }
}
