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
        title: "iOS 13 & Swift 5 Programming",
        author: "Mark Wahlbeck",
        picture: "book2",
        resume: "Learn how to write code, build awesome apps, and go from beginner to developper"
    )
    
    static var book3 = Book (
        title: "iOS 14 Programming Fundamentals With Swift",
        author: "Matt Neuburg",
        picture: "book3",
        resume: "Move into iOS development by getting a firm grasp of its fundamentals, including the Xcode 12 IDE, Cocoa Touch, and the latest version of Apple's acclaimed programming language, Swift 5.3. With this thoroughly updated guide, you'll learn the Swift language, understand Apple's Xcode development tools, and discover the Cocoa framework. Become familiar with built-in Swift types Dive deep into Swift objects, protocols, and generics Tour the life cycle of an Xcode project Learn how nibs are loaded Understand Cocoa's event-driven design Communicate with C and Objective-C In this edition, catch up on the latest iOS programming features: Multiple trailing closures Code editor document tabs New Simulator features Resources in Swift packages Logging and testing improvements And more! Once you master the fundamentals, you'll be ready to tackle the details of iOS app development with author Matt Neuburg's companion guide, Programming iOS 14."
    )
    static var book4 = Book (
        title: "SwiftUI Essentials - iOS 14 Editio‪n",
        author: "Neil Smyth",
        picture: "book4",
        resume: """
        The goal of this book is to teach the skills necessary to build iOS 14 applications using SwiftUI, Xcode 12 and the Swift 5.3 programming language.

        Beginning with the basics, this book provides an outline of the steps necessary to set up an iOS development environment together with an introduction to the use of Swift Playgrounds to learn and experiment with Swift.

        The book also includes in-depth chapters introducing the Swift 5.3 programming language including data types, control flow, functions, object-oriented programming, property wrappers and error handling.
        """
    )
    
    static var book5 = Book (
        title: "HACKING WITH iOS 5",
        author: "Paul Hudson",
        picture: "book5",
        resume: "Start learning Swift 5.2 with either UIKit or SwiftUI, with exclusive extra content available in the download edition"
    )
    
    static var books:[Book] = [
        book4, book2, book3, book1, book5
    ]
}
