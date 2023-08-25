//
//  CastModel.swift
//  MovieApp
//
//  Created by Brontosaurus on 20/08/23.
//

import Foundation

struct Casting : Identifiable {
    let id = NSUUID().uuidString
    let image: String
    let name: String
    let filmname: String
}
