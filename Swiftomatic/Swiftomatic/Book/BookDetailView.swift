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
        VStack (alignment: .leading){
            
            Text(book.title.uppercased())
                .font(.title3)
                .foregroundColor(.blue)
                .padding(.top)
            
            Text(book.author)
                .font(.callout)

            HStack {
                Spacer()
                Image(book.picture)
                    .resizable()
                    .padding(.top)
                    .scaledToFit()
                    .frame(maxWidth: 300)
                Spacer()
            }
            
            Text("Resumé")
                .font(.headline)
                .padding(.top)
                
            ScrollView {
                Text(book.resume)
                    .font(.body)
            }
            
            Spacer()
        }
        .padding()
        
    }
}

struct BookRowView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(
            book: Book.book3
        )
    }
}
