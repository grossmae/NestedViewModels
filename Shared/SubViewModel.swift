//
//  SubViewModel.swift
//  NestedViewModels
//
//  Created by Evan Grossman on 5/11/21.
//

import Foundation
import Combine

class SubViewModel: ObservableObject {
    
    @Published var subtitle: String
    
    private var cancellables = Set<AnyCancellable>()
    
    init(subtitle: String) {
        self.subtitle = subtitle
        
        $subtitle
            .receive(on: RunLoop.main)
            .sink{ print("Subtitle changed in SubViewModel to \($0)") }
            .store(in: &cancellables)
    }
}
