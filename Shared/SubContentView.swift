//
//  SubContentView.swift
//  NestedViewModels
//
//  Created by Evan Grossman on 5/11/21.
//

import SwiftUI
import Combine

struct SubContentView: View {
    
    @ObservedObject var subViewModel: SubViewModel
    
    
    var body: some View {
        TextField(subViewModel.subtitle, text: $subViewModel.subtitle)
    }
}

struct SubContentView_Previews: PreviewProvider {
    static var previews: some View {
        SubContentView(subViewModel: SubViewModel(subtitle: "Subtitle"))
    }
}
