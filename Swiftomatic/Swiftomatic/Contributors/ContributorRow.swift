//
//  ContributorRawView.swift
//  Swiftomatic
//
//  Created by Bachir SAHALI on 16/03/2021.
//

import SwiftUI

struct ContributorRow: View {
    var contributor: Contributor
    
    var body: some View {
        HStack {
            Image(contributor.photo)
            Text(contributor.name)
        }
    }
}

struct ContributorRow_Previews: PreviewProvider {
    static var previews: some View {
        ContributorRow( contributor: Contributor.listContributor[0])
    }
}
