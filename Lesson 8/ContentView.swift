//
//  ContentView.swift
//  Lesson 8
//
//  Created by Marcello Lima on 24/09/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: IndexModel
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                LazyVStack {
                    ForEach (0..<model.index.count) { item in
                        RoundedRectangle(cornerRadius: 5)
                            .fill(RadialGradient(gradient: Gradient(colors:[.orange, .red]), center: UnitPoint(x: 0.5, y: 0.5), startRadius: 0, endRadius: 200)
                            )
                            .padding(.horizontal, 10)
                            .frame(width: geo.size.width, height: pow(1.1, CGFloat(model.index[item])), alignment: .leading)
                            
                    }
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(IndexModel())
    }
}
