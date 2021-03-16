//
//  firstView.swift
//  Swiftomatic
//
//  Created by vincent schmitt on 16/03/2021.
//

import SwiftUI

struct firstView: View {
    var body: some View {
        TabView {
            Text("Hello1")
                .tabItem{
                    Label(
                        title: { Text("Frameworks") },
                        icon: { Image(systemName: "1.circle") }
)
                }
            Text("Hello2")
                .tabItem{
                    Label(
                        title: { Text("Livres") },
                        icon: { Image(systemName: "2.circle") }
)
                }
            Text("Hello3")
                .tabItem{
                    Label(
                        title: { Text("Conférences") },
                        icon: { Image(systemName: "3.circle") }
)
                }
            Text("Hello4")
                .tabItem{
                    Label(
                        title: { Text("Contributeurs") },
                        icon: { Image(systemName: "4.circle") }
)
                }

        }
    }
}

struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        firstView()
    }
}
