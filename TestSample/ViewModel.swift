//
//  ViewModel.swift
//  TestSample
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import Foundation

// ViewModel
protocol ViewModelProtocol: ObservableObject {
    var lastQuery: String? { get }
    var shouldShowErrorAlert: Bool { get set }
    var moreSearchResultsExist: Bool { get }
    func search(query: String)
}

class ViewModel: ViewModelProtocol {
    
    @Published var lastQuery: String?
    @Published var shouldShowErrorAlert: Bool = false
    @Published var moreSearchResultsExist: Bool = false
    
}

extension ViewModel {
    func search(query: String) {

    }
}
