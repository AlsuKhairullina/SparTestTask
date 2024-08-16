//
//  GridProductCardView.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 13.08.2024.
//

import SwiftUI

struct GridProductCardView: View {
    
    let product: ProductModel
    private let edges = EdgeInsets(top: ConstraintConstants.const4,
                                   leading: ConstraintConstants.const8,
                                   bottom: ConstraintConstants.const0,
                                   trailing: ConstraintConstants.const8)
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: ConstraintConstants.const0) {
            
            GridProductCardTopView(product: product)
            Text(product.productName)
                .foregroundStyle(ColorsConstants.textIcons002)
                .font(FontConstants.regular12)
                .padding(edges)
                .lineLimit(2)
            if let text = product.origin {
                Text("\(text)")
                    .foregroundStyle(ColorsConstants.textIcons003)
                    .font(FontConstants.regular12)
                    .padding(edges)
            } else {
                EmptyView()
            }
            Spacer()
            GridProductCardBottomView(product: product)
        }
        .background(ColorsConstants.staticWhite)
    }
}
