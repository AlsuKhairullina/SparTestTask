//
//  ListProductLeftView.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 15.08.2024.
//

import SwiftUI

struct ListProductLeftView: View {
    
    let product: ProductModel
    
    var body: some View {
        Image(uiImage: product.productImage)
            .resizable()
            .scaledToFill()
            .frame(width: ConstraintConstants.const144,
                   height: ConstraintConstants.const144)
            .overlay(BadgeView(product: product), alignment: .topLeading)
            .overlay(SaleView(product: product), alignment: .bottomTrailing)
    }
}

