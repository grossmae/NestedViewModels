//
//  ContentView.swift
//  Shared
//
//  Created by Evan Grossman on 5/11/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var topViewModel: TopViewModel
    
    var body: some View {
        TextField(topViewModel.title, text: $topViewModel.title)
        SubContentView(subViewModel: topViewModel.subViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(topViewModel: TopViewModel(title: "Title", subtitle: "Subtitle"))
    }
}
