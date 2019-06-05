//
//  SearchView.swift
//  UISwift_OMDb_Client
//
//  Created by Robin Douglas on 04/06/2019.
//  Copyright © 2019 Robin Douglas. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @State var searchString = ""

    var body: some View {
        VStack {
            TextField($searchString, placeholder: Text("Search"))
                .padding()
            NavigationButton(destination: MoviesView(movies: MovieDataBO(search: searchString))) {
                Text("Search")
            }
                .padding()
            Spacer()
        }
            .navigationBarTitle(Text("Search"))
    }
}

#if DEBUG
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
#endif
