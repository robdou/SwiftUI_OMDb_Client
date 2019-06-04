//
//  ContentView.swift
//  UISwift_OMDb_Client
//
//  Created by Robin Douglas on 04/06/2019.
//  Copyright © 2019 Robin Douglas. All rights reserved.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationView {
            Text("test")
                .navigationBarTitle(Text("Test"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
#endif
