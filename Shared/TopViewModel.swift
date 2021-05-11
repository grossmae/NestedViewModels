//
//  TopViewModel.swift
//  NestedViewModels
//
//  Created by Evan Grossman on 5/11/21.
//

import Foundation
import Combine

class TopViewModel: ObservableObject {
    
    @Published var title: String
    @Published var subtitle: String
    
    private var cancellables = Set<AnyCancellable>()
    
    init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
        
        $title
            .receive(on: RunLoop.main)
            .sink {
                print("Title updated in TopVM to ", $0)
            }
            .store(in: &cancellables)
        
        $subtitle
            .receive(on: RunLoop.main)
            .sink {
                print("Subtitle updated in TopVM to ", $0)
            }
            .store(in: &cancellables)
    }
    
    func subViewModel() -> SubViewModel {
        SubViewModel(subtitle: subtitle)
    }
}
