//
//  Item.swift
//  Drag&Drop Table
//
//  Created by Tanay Bhattacharjee on 11/02/25.
//


import Foundation

struct Item: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var icon: String
}