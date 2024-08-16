//
//  ProductsGrid.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 15.08.2024.
//

import SwiftUI

struct ProductsGrid: View {
    
    @ObservedObject var viewModel = GridViewModel()
    
    private let columns = [
        GridItem(.flexible(), spacing: ConstraintConstants.const5),
        GridItem(.flexible(), spacing: ConstraintConstants.const5)
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .frame(height: ConstraintConstants.const1)
                .foregroundStyle(ColorsConstants.specialSurfaces006)
            LazyVGrid(columns: columns, spacing: ConstraintConstants.const8) {
                ForEach(viewModel.products) { product in
                    GridProductCardView(product: product)
                        .clipShape(RoundedRectangle(cornerRadius: ConstraintConstants.const24))
                        .shadow(color: ColorsConstants.shadowColor, radius: ConstraintConstants.const2)
                }
            }
            .padding(ConstraintConstants.const16)
        }
        .background(ColorsConstants.staticWhite)
    }
}

#Preview {
    ProductsGrid()
}
