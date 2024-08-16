//
//  GridProductCardBottomView.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 14.08.2024.
//

import SwiftUI

struct GridProductCardBottomView: View {
    
    let product: ProductModel
    private let edges = EdgeInsets(top: ConstraintConstants.const4,
                                   leading: ConstraintConstants.const4,
                                   bottom: ConstraintConstants.const4,
                                   trailing: ConstraintConstants.const0)
    
    var body: some View {
        HStack(spacing: ConstraintConstants.const0) {
            VStack(alignment: .leading, spacing: ConstraintConstants.const0) {
                HStack(alignment: .top, spacing: ConstraintConstants.const2) {
                    Text("\(product.salePrice)")
                        .font(FontConstants.bold20)
                        .fixedSize()
                    Text("90")
                        .font(FontConstants.bold16)
                    Image(.perAmountIcon)
                }
                Text("\(product.fullPrice)")
                    .padding([.leading, .bottom], ConstraintConstants.const4)
                    .font(FontConstants.regular12)
                    .foregroundStyle(ColorsConstants.textIcons003)
                    .strikethrough(true)
            }
            .padding(edges)
            Spacer()
            Rectangle()
                .fill(ColorsConstants.primary001)
                .clipShape(RoundedRectangle(cornerRadius: ConstraintConstants.const40))
                .frame(width: ConstraintConstants.const48,
                       height: ConstraintConstants.const36)
                .padding(ConstraintConstants.const4)
                .overlay(Image("Cart")
                    .foregroundStyle(ColorsConstants.staticWhite)
                    .font(.system(size: ConstraintConstants.const16)))
            
        }
    }
}
