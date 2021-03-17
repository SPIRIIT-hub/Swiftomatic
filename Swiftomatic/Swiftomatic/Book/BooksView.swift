//
//  BooksView.swift
//  Swiftomatic
//
//  Created by Mounir DJIAR on 16/03/2021.
//

import SwiftUI

struct BooksView: View {
    var body: some View {
        
        NavigationView {
            List(Book.books) { book in
                NavigationLink (
                        destination: BookDetailView(book: book),
                        label: {
                            VStack (alignment: .leading) {
                                Text(book.title.uppercased())
                                    .font(.title3)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                
                                Text(book.author)
                                    .font(.caption2)
                            }
                        }
                    )
            }
           .navigationTitle("Livres iOS / Swift")
        }
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView()
    }
}
