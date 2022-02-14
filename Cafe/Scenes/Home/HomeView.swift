//
//  HomeView.swift
//  Cafe
//
//  Created by Joseph Cha on 2022/02/08.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
            MenuSuggestionSectionView(coffeeMenu: $viewModel.coffeeMenu)
            Spacer(minLength: 32.0)
            EventSectionView(events: $viewModel.events)
        }
    }
}

struct HomeView_Previes: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
