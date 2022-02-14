//
//  MainTabView.swift
//  Cafe
//
//  Created by Joseph Cha on 2022/02/07.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            OtherView()
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.textItem
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

// HStack
//struct SampleListView: View {
//
//    struct Number: Identifiable {
//        let value: Int
//        var id: Int { value }
//    }
//
//    let numbers: [Number] = (0...100).map { Number(value: $0)}
//
//    var body: some View {
//        List {
//            Section(header: Text("Header")) {
//                ForEach(numbers) { number in
//                    Text("\(number.value)")
//                }
//            }
//
//            Section(header: Text("Second"),
//                    footer: Text("Footer")) {
//                ForEach(numbers) { number in
//                    Text("\(number.value)")
//                }
//            }
//        }
//    }
//}
//
//struct SampleListView_Previews: PreviewProvider {
//    static var previews: some View {
//        SampleListView()
//    }
//}
// LazyHStack
// List
