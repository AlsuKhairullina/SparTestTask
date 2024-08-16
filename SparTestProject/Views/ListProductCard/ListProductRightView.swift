//
//  ListProductRightView.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 15.08.2024.
//

import SwiftUI

struct ListProductRightView: View {
    
    let product: ProductModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: ConstraintConstants.const0) {
            HStack {
                MainView(product: product)
                Spacer()
                FavouriteView()
            }
            Spacer()
            GridProductCardBottomView(product: product)
        }
    }
}

struct MainView: View {
    
    private let edges = EdgeInsets(top: ConstraintConstants.const4,
                                   leading: ConstraintConstants.const8,
                                   bottom: ConstraintConstants.const0,
                                   trailing: ConstraintConstants.const8)
    
    let product: ProductModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: ConstraintConstants.const0) {
            HStack(spacing: ConstraintConstants.const0) {
                RatingView(product: product)
                Rectangle()
                    .frame(width: ConstraintConstants.const1,
                           height: ConstraintConstants.const10)
                    .padding(.horizontal, ConstraintConstants.const4)
                    .foregroundStyle(ColorsConstants.textIcons003)
                if let text = product.reviewCount {
                    Text(localizedFeedback(count: text))
                        .font(FontConstants.regular12)
                        .foregroundStyle(ColorsConstants.textIcons003)
                } else {
                    EmptyView()
                }
            }
            
            Text("\(product.productName)")
                .font(FontConstants.regular12)
                .padding(edges)
                .foregroundStyle(ColorsConstants.textIcons002)
            
            if let text = product.origin {
                Text("\(text)")
                    .foregroundStyle(ColorsConstants.textIcons003)
                    .font(FontConstants.regular12)
                    .padding(edges)
            } else {
                EmptyView()
            }
        }
        
    }
    
    func localizedFeedback(count: Int) -> String {
        switch count {
        case 0, 5...20, 25...30, 35...40, 45...50, 55...60, 65...70, 75...80, 85...90, 95...100:
            return "\(count) отзывов"
        case 1, 21, 31, 41, 51, 61, 71, 81, 91, 101:
            return "\(count) отзыв"
        case 2...4, 22...24, 32...34, 42...44, 52...54, 62...64, 72...74, 82...84, 92...94:
            return "\(count) отзыва"
        default:
            return "\(count) отзывов"
        }
    }
}
