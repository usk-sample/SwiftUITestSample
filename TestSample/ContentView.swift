//
//  ContentView.swift
//  TestSample
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Text("\(self.viewModel.count)")
            Button.init("Increment") {
                self.viewModel.increment()
            }
        }
        
    }    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init(count: 0))
    }
}
