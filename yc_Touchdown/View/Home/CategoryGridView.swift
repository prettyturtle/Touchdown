//
//  CategoryGridView.swift
//  yc_Touchdown
//
//  Created by yc on 2023/08/24.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    
    
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing) {
                Section {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    } //: LOOP
                } header: {
                    SectionView(rotateClockwise: false)
                } footer: {
                    SectionView(rotateClockwise: true)
                }
            } //: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: SCROLL
    }
}

// MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
//            .previewLayout(.sizeThatFits)
//            .padding()
//            .background(colorBackground)
    }
}
