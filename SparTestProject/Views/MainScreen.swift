//
//  MainScreen.swift
//  SparTestProject
//
//  Created by Алсу Хайруллина on 16.08.2024.
//

import SwiftUI

enum DisplayVariants {
    case grid
    case list
}

final class ProductsState: ObservableObject {
    @Published var state: DisplayVariants = .grid
}

struct MainScreen: View {
    
    @StateObject var displayState = ProductsState()
    
    var body: some View {
        NavigationView {
            VStack {
                switch displayState.state {
                case .grid:
                    ProductsGrid()
                case .list:
                    ProductsList()
                }
            }
            .navigationBarItems(leading: MenuButton(buttonState: displayState))
        }
    }
}

struct MenuButton: View {
    
    @ObservedObject var buttonState: ProductsState
    
    var body: some View {
        Menu {
            Button(action: {
                buttonState.state = .grid
            }) {
                Label(StringsConstants.grid, image: "GridIcon")
            }
            
            Button(action: {
                buttonState.state = .list
            }) {
                Label(StringsConstants.list, image: "ListIcon")
            }
        } label: {
            switch buttonState.state {
            case .grid:
                Image("GridIcon")
                    .frame(width: ConstraintConstants.const40,
                           height: ConstraintConstants.const40)
                    .background(ColorsConstants.surafaces002)
                    .clipShape(RoundedRectangle(cornerRadius: ConstraintConstants.const12))
            case .list:
                Image("ListIcon")
                    .frame(width: ConstraintConstants.const40,
                           height: ConstraintConstants.const40)
                    .background(ColorsConstants.surafaces002)
                    .clipShape(RoundedRectangle(cornerRadius: ConstraintConstants.const12))
            }
        }
    }
}

#Preview {
   MainScreen()
}
