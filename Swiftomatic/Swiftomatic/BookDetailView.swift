//
//  BookRowView.swift
//  Swiftomatic
//
//  Created by Mounir DJIAR on 16/03/2021.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    
    var body: some View {
        
        NavigationView {
            VStack (alignment:.leading) {
                
                VStack (alignment:.leading) {
                    
                    Text(book.title.uppercased())
                        .font(.title3)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    Text(book.author)
                        .font(.caption2)
                }
                
                Image(book.picture)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 300)
                
                Text("Resumé")
                    .font(.headline)
                
                Text(book.resume)
                    .font(.caption2)
            }
            .padding()
        }
        .navigationBarTitle(book.title.uppercased(), displayMode: .inline)
    }
}

struct BookRowView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(
            book: Book.book1
        )
    }
}
