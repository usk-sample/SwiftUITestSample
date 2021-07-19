//
//  ContentView.swift
//  TestSample
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import SwiftUI

struct ContentView<ViewModel: ViewModelProtocol>: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView.init(viewModel: ViewModel())
    }
}
