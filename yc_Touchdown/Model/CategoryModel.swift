//
//  CategoryModel.swift
//  yc_Touchdown
//
//  Created by yc on 2023/08/24.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image:  String
}
