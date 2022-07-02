//
//  ContentView.swift
//  M2L4
//
//  Created by Dhruv Reddy on 7/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var listarray:[Int] = [Int]()
    var body: some View {
        VStack {
            List(listarray, id: \.self) { em in
                Text("\(em)")
            }
            Button(action: {
                var randInt = Int.random(in: 1...10)
                while randInt != 7 {
                    listarray.append(randInt)
                    randInt = Int.random(in: 1...10)
                }
            }, label: { Text("One") })
            Button(action: {
                for i in 0...listarray.count - 1 {
                    listarray[i] += 1
                }
            }, label: { Text("Two") })
            Button(action: {
                listarray.removeAll()
            }, label: { Text("Three") })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
