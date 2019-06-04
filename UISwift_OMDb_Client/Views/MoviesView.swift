//
//  MoviesView.swift
//  UISwift_OMDb_Client
//
//  Created by Robin Douglas on 04/06/2019.
//  Copyright © 2019 Robin Douglas. All rights reserved.
//

import SwiftUI

struct MoviesView: View {
    @State var searchString: String

    var body: some View {
        Text("Movies View")
            .navigationBarTitle(Text(searchString))
    }
}

#if DEBUG
struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView(searchString: "")
    }
}
#endif
