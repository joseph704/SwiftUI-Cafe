//
//  HomeViewModel.swift
//  Cafe
//
//  Created by Joseph Cha on 2022/02/14.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isNeedToReload = false {
        didSet {
            guard isNeedToReload else {return}
            
            coffeeMenu.shuffle()
            events.shuffle()
            
            isNeedToReload = false
            
        }
    }
    
    @Published var coffeeMenu: [CoffeMenu] = [
        CoffeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeMenu(image: Image("coffee"), name: "카페라떼"),
        CoffeMenu(image: Image("coffee"), name: "아이스 카페라뗴"),
        CoffeMenu(image: Image("coffee"), name: "드립커피"),
        CoffeMenu(image: Image("coffee"), name: "아이스 드립커피")
    ]
    
    @Published var events: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 음료가 출시되었습니다! 꼭 드셔보세요"),
        Event(image: Image("coffee"), title: "여름 한정 메뉴", description: "여름이니까 아이스 커피 ~ 여름이니까 더더욱 아이스커피")
    ]
}
