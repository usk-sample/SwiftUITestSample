//
//  ViewModel.swift
//  TestSample
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var count: Int
    
    init(count: Int) {
        self.count = count
    }
    
}

extension ViewModel {
    func increment() {
        self.count += 1
    }
}
