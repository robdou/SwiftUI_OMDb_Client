//
//  MoviesView.swift
//  UISwift_OMDb_Client
//
//  Created by Robin Douglas on 04/06/2019.
//  Copyright © 2019 Robin Douglas. All rights reserved.
//

import SwiftUI

struct MoviesView: View {
    @State var movies: MovieDataBO

    var body: some View {
        List() {
            ForEach(movies.movies) { movie in
                MovieRow(movie: movie)
            }
        }
            .navigationBarTitle(Text(movies.searchString))
    }
}

struct MovieRow: View {
    var movie: OMDbItem

    var body: some View {
        VStack(alignment: .leading) {
            Text(movie.title ?? "")
                .font(.headline)
            Text(movie.year ?? "")
                .font(.subheadline)
        }
    }
}

#if DEBUG
struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView(movies: MovieDataBO(search: ""))
    }
}
#endif
