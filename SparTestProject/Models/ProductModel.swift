//
//  ProductModel.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 15.08.2024.
//

import SwiftUI

struct ProductModel: Identifiable {
    
    var id = UUID()
    let badge: String?
    let productImage: UIImage
    let rating: Double
    let productName: String
    let origin: String?
    let salePrice: Int
    let fullPrice: Int
    let saleSize: Int?
    let reviewCount: Int?

}
