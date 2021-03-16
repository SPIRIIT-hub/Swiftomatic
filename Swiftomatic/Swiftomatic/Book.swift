//
//  Book.swift
//  Swiftomatic
//
//  Created by Mounir DJIAR on 16/03/2021.
//

import Foundation


struct Book :Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let picture: String
    let resume: String

    //var stars: Double!
}

extension Book {
    static var book1 = Book (
        title: "iOS 12 Programming for beginners",
        author: "Craig Clayton",
        picture: "book1",
        resume: "An introductory guide to iOS app development with Swift 4.2 and Xcode 10, 3rd Edition"
    )
    
    static var book2 = Book (
        title: "HACKING WITH iOS 2",
        author: "PAUL HUDSON",
        picture: "book2",
        resume: "Start learning Swift 5.2 with either UIKit or SwiftUI, with exclusive extra content available in the download edition"
    )
    
    static var book3 = Book (
        title: "HACKING WITH iOS 3",
        author: "PAUL HUDSON",
        picture: "book3",
        resume: "Start learning Swift 5.2 with either UIKit or SwiftUI, with exclusive extra content available in the download edition"
    )
    static var book4 = Book (
        title: "HACKING WITH iOS 4",
        author: "PAUL HUDSON",
        picture: "book4",
        resume: "Start learning Swift 5.2 with either UIKit or SwiftUI, with exclusive extra content available in the download edition"
    )
    
    static var book5 = Book (
        title: "HACKING WITH iOS 5",
        author: "PAUL HUDSON",
        picture: "book5",
        resume: "Start learning Swift 5.2 with either UIKit or SwiftUI, with exclusive extra content available in the download edition"
    )
    
    static var books:[Book] = [
        book1, book2, book3, book4, book5
    ]
}
