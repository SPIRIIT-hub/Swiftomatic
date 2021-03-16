//
//  detailListFrameW.swift
//  Swiftomatic
//
//  Created by emm on 16/03/2021.
//

import SwiftUI

struct detailListFrameW: View {
    
    let item: TodayItem
 
    var body: some View {
        VStack {
          
            Image(item.image)
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 50)
            
                
            Text(item.title)
                .fontWeight(.bold)
                .font(.system(size: 50))
            .padding(.bottom, 40)
            
            Text(item.text)
                
            Spacer()
                
            }
           
        }
    }


struct detailListFrameW_Previews: PreviewProvider {
    static var previews: some View {
        detailListFrameW(item: TodayItem( title: "swiftUI", text: "dhjkshfjkshfjlshlsdsfjdshjfhsdlkhfjkdshjfkshjfdsh", image: "a1"))
    }
}
