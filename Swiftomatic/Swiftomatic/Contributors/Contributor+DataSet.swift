//
//  Contributor+DataSet.swift
//  Swiftomatic
//
//  Created by Bachir SAHALI on 16/03/2021.
//

import Foundation

extension Contributor {
    
    static let gregor = Contributor(photo: "gregor", nom: "Doug Gregor", biographie: "BIO", contributions: ["contrib1", "contrib2", "contrib3"])
    static let pestov = Contributor(photo: "gregor", nom: "Slava Pestov", biographie: "BIO", contributions: ["contrib1", "contrib2", "contrib3"])
    static let gottesman = Contributor(photo:"gregor", nom: "Michael Gottesman", biographie: "BIO", contributions: ["contrib1", "contrib2", "contrib3"])
    static let grodd = Contributor(photo: "gregor", nom: "Joe Groff", biographie: "BIO", contributions: ["contrib1", "contrib2", "contrib3"])
    static let lattner = Contributor(photo: "gregor", nom: "Chris Lattner", biographie: "BIO", contributions: ["contrib1", "contrib2", "contrib3"])
    
    static let listContributors = [gregor,pestov,gottesman,lattner]
}
