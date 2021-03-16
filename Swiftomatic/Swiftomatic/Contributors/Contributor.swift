//
//  Contributor.swift
//  Swiftomatic
//
//  Created by Bachir SAHALI on 16/03/2021.
//

import Foundation
import SwiftUI

struct Contributor: Identifiable {
    
    let id = UUID()
    let photo: String
    let name: String
    let biographie: String
    let contributions: [String]
    
}

