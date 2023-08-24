//
//  AddToCartDetailView.swift
//  yc_Touchdown
//
//  Created by yc on 2023/08/25.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button {
            
        } label: {
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(sampleProduct.backgroundColor)
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
    }
}
