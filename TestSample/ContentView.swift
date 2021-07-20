//
//  ContentView.swift
//  TestSample
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Text("\(count)")
            Button.init("Increment") {
                self.count += 1
            }
        }
        
    }    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
