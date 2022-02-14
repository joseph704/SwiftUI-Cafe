//
//  Tab.swift
//  Cafe
//
//  Created by Joseph Cha on 2022/02/07.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    // associate
    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}
