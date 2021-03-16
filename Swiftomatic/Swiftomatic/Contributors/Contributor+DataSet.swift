//
//  Contributor+DataSet.swift
//  Swiftomatic
//
//  Created by Bachir SAHALI on 16/03/2021.
//

import Foundation

extension Contributor {
    
    static let gregor = Contributor(photo: "gregor", name: "Doug Gregor", biographie: "BIO", contributions: ["contrib1", "contrib2", "contrib3"])
    static let pestov = Contributor(photo: "gregor", name: "Slava Pestov", biographie: "BIO", contributions: ["contrib1", "contrib2", "contrib3"])
    static let gottesman = Contributor(photo:"gregor", name: "Michael Gottesman", biographie: "BIO", contributions: ["contrib1", "contrib2", "contrib3"])
    static let grodd = Contributor(photo: "gregor", name: "Joe Groff", biographie: "BIO", contributions: ["contrib1", "contrib2", "contrib3"])
    static let lattner = Contributor(photo: "gregor", name: "Chris Lattner", biographie: "BIO", contributions: ["contrib1", "contrib2", "contrib3"])
    
    static var listContributor = [gregor,pestov,gottesman,lattner]
}
