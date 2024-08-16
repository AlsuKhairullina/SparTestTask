//
//  GridViewModel.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 15.08.2024.
//

import SwiftUI

final class GridViewModel: ObservableObject {
    
    @Published var products = [ProductModel]()
    
    init() {
        fetchProducts()
    }
    
    func fetchProducts() {
        let product1 = ProductModel(badge: nil, productImage: UIImage(resource: .sandwich), rating: 4.5, productName: "Сэндвич с ветчиной и сыром", origin: "Россия", salePrice: 139, fullPrice: 199, saleSize: 10, reviewCount: 19)
        let product2 = ProductModel(badge: "Удар по ценам", productImage: UIImage(resource: .coffee), rating: 4.9, productName: "Кофе Jacobs Monarch", origin: nil, salePrice: 199, fullPrice: 369, saleSize: nil, reviewCount: 31)
        let product3 = ProductModel(badge: "Новинки", productImage: UIImage(resource: .meat), rating: 3.9, productName: "Окорок Свиной без Кости", origin: "Россия", salePrice: 289, fullPrice: 349, saleSize: 12, reviewCount: 10)
        let product4 = ProductModel(badge: nil, productImage: UIImage(resource: .croissant), rating: 5.0, productName: "Круассан 50г", origin: "Россия", salePrice: 79, fullPrice: 169, saleSize: nil, reviewCount: 15)
        let product5 = ProductModel(badge: nil, productImage: UIImage(resource: .cucumbers), rating: 4.7, productName: "Огурцы тепличные", origin: "Россия", salePrice: 99, fullPrice: 129, saleSize: nil, reviewCount: 32)
        let product6 = ProductModel(badge: "Цена по карте", productImage: UIImage(resource: .vetchina), rating: 3.9, productName: "Ветчина натуральная", origin: nil, salePrice: 159, fullPrice: 199, saleSize: nil, reviewCount: 119)
        let product7 = ProductModel(badge: "Новинки", productImage: UIImage(resource: .olivie), rating: 4.0, productName: "Салат Оливье", origin: "Россия", salePrice: 89, fullPrice: 99, saleSize: nil, reviewCount: 1)
        let product8 = ProductModel(badge: nil, productImage: UIImage(resource: .croissant), rating: 2.2, productName: "Ролл Маленькая Япония 216г", origin: "Россия", salePrice: 2999, fullPrice: 199, saleSize: nil, reviewCount: 19)
        let product9 = ProductModel(badge: nil, productImage: UIImage(resource: .potatoes), rating: 4.3, productName: "Картофель 3кг", origin: "Россия", salePrice: 95699, fullPrice: 199, saleSize: nil, reviewCount: 23)
        let product10 = ProductModel(badge: "Удар по ценам", productImage: UIImage(resource: .vetchina), rating: 5.0, productName: "Кофе Jacobs Monarch", origin: nil, salePrice: 99, fullPrice: 199, saleSize: nil, reviewCount: 19)
        let product11 = ProductModel(badge: "Новинки", productImage: UIImage(resource: .shashlik), rating: 4.5, productName: "Окорок Свиной без Кости", origin: "Россия", salePrice: 289, fullPrice: 349, saleSize: 50, reviewCount: 11)
        let product12 = ProductModel(badge: nil, productImage: UIImage(resource: .cucumbers), rating: 4.1, productName: "Круассан 50г", origin: "Россия", salePrice: 99, fullPrice: 169, saleSize: nil, reviewCount: 5)
        
        products = [product1, product2, product3, product4, product5, product6, product7, product8, product9, product10, product11, product12]
    }
    
}
