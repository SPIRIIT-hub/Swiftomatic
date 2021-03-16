//
//  frameworksView.swift
//  Swiftomatic
//
//  Created by emm on 16/03/2021.
//

import SwiftUI

struct frameworksView: View {
    
//    let frameWorksArray: [String] = ["SwiftUI", "UIKit", "MapKit", "CoreData", "CloudKit", "ARKit", "Siri"]
    
    var body: some View {
        NavigationView {
                    List(itemsApp) { item in
                        NavigationLink(destination: detailListFrameW(item: item)) {
                            itemG(item: item)
                        }
                        
                    }
                   
                    .navigationBarTitle("List FrameWorks")
                }
        }
    }


struct frameworksView_Previews: PreviewProvider {
    static var previews: some View {
        frameworksView()
    }
}


struct itemG: View {
    
    var item: TodayItem
    
    var body: some View {
        HStack {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack (alignment: .leading){
                Text(item.title)
                    .font(.system(size: 21 , weight: .medium, design: .default))
                
            }
        }
    }
}
