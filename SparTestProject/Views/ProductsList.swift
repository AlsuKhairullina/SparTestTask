//
//  ProductsList.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 15.08.2024.
//

import SwiftUI

struct ProductsList: View {
    
    @ObservedObject var viewModel = GridViewModel()
    private var edges: EdgeInsets = EdgeInsets(top: ConstraintConstants.const16, 
                                               leading: ConstraintConstants.const16,
                                               bottom: ConstraintConstants.const16,
                                               trailing: ConstraintConstants.const8)
    
    var body: some View {

        ScrollView {
            Rectangle()
                .frame(height: ConstraintConstants.const1)
                .foregroundStyle(ColorsConstants.specialSurfaces006)
            LazyVStack(spacing: ConstraintConstants.const0) {
                ForEach(viewModel.products) { product in
                    ListProductCard(product: product)
                        .clipShape(RoundedCornerShape(radius: ConstraintConstants.const16, corners: .allCorners))
                        .padding(edges)
                    Rectangle()
                        .frame(height: ConstraintConstants.const1)
                        .foregroundStyle(ColorsConstants.specialSurfaces006)
                }
            }
        }
        
    }
}

#Preview {
    ProductsList()
}
