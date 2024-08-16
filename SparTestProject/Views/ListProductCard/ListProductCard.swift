//
//  ListProductCard.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 15.08.2024.
//

import SwiftUI

struct ListProductCard: View {
    
    let product: ProductModel
    
    var body: some View {
        HStack(alignment: .top) {
            ListProductLeftView(product: product)
            ListProductRightView(product: product)
        }
        .frame(maxWidth: .infinity,
               maxHeight: ConstraintConstants.const144)
    }
}
