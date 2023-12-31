//
//  ContentView.swift
//  yc_Touchdown
//
//  Created by yc on 2023/08/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .padding(.vertical)
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmet")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            } //: LOOP
                        } //: GRID
                        .padding(15)
                        
                        TitleView(title: "Brand")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    } //: VSTACK
                } //: SCROLL
            } //: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top  )
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
