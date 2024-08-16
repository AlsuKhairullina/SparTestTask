//
//  GridProductCardTopView.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 13.08.2024.
//

import SwiftUI

struct GridProductCardTopView: View {
    
    let product: ProductModel
    
    var body: some View {
        Image(uiImage: product.productImage)
            .resizable()
            .scaledToFit()
            .clipped()
            .overlay(RatingView(product: product), alignment: .bottomLeading)
            .overlay(BadgeView(product: product), alignment: .topLeading)
            .overlay(FavouriteView(), alignment: .topTrailing)
            .overlay(SaleView(product: product), alignment: .bottomTrailing)
    }
    
}

struct RatingView: View {
    
    let product: ProductModel
    
    var body: some View {
        HStack(alignment: .center, spacing: ConstraintConstants.const2) {
            Image("Star")
                .resizable()
                .foregroundColor(.yellow)
                .frame(width: ConstraintConstants.const16,
                       height: ConstraintConstants.const16)
                .padding(ConstraintConstants.const2)
            Text(String(format: "%.1f", product.rating))
                .font(FontConstants.regular12)
                .foregroundStyle(ColorsConstants.text002)
        }
        .padding(.horizontal, ConstraintConstants.const4)
        .background(ColorsConstants.staticWhite)
        .clipShape(RoundedCornerShape(radius: ConstraintConstants.const28,
                                      corners: .topRight))
    }
}

struct BadgeView: View {
    
    let product: ProductModel
    private let edges = EdgeInsets(top: ConstraintConstants.const4,
                                   leading: ConstraintConstants.const12,
                                   bottom: ConstraintConstants.const4,
                                   trailing: ConstraintConstants.const6)
    
    var body: some View {
        if let text = product.badge {
            Text("\(text)")
                .font(FontConstants.regular10)
                .padding(edges)
                .foregroundStyle(ColorsConstants.staticWhite)
                .background(backgroundColor(for: text))
                .clipShape(RoundedCornerShape(radius: ConstraintConstants.const28,
                                              corners: [.topRight, .bottomRight]))
        } else {
            EmptyView()
        }
        
    }
    
    func backgroundColor(for text: String) -> Color {
        
        switch text {
        case StringsConstants.sale:
            return ColorsConstants.badgeRed
        case StringsConstants.new:
            return ColorsConstants.badgePurple
        case StringsConstants.cardPrice:
            return ColorsConstants.badgeGreen
        default:
            return Color.clear
        }
    }
}

struct FavouriteView: View {
    var body: some View {
        VStack(spacing: ConstraintConstants.const0) {
            Image(.bookmarkIcon)
                .font(.system(size: ConstraintConstants.const14))
                .padding(ConstraintConstants.const8)
            Image(.favouriteIcon)
                .font(.system(size: ConstraintConstants.const14))
                .padding(ConstraintConstants.const8)
        }
        .background(ColorsConstants.translucentWhite)
        .clipShape(RoundedCornerShape(radius: ConstraintConstants.const16,
                                      corners: .bottomLeft))
    }
}

struct SaleView: View {
    
    let product: ProductModel
    
    var body: some View {
        if let text = product.saleSize {
            Text("\(text) %")
                .padding(.horizontal, ConstraintConstants.const4)
                .font(FontConstants.bold16)
                .foregroundStyle(ColorsConstants.additional004)
                .background()
                .clipShape(RoundedCornerShape(radius: ConstraintConstants.const28, 
                                              corners: [.topLeft])) // Возможно, тут необязательно закругление, но у остальных элементов оно есть, поэтому я тоже добавила :)
        } else {
            EmptyView()
        }
    }
}
