//
//  GenerateIndex.swift
//  Lesson 8
//
//  Created by Marcello Lima on 24/09/21.
//

import Foundation

class IndexModel: Identifiable, ObservableObject {
    
    var id:UUID = UUID()
    @Published var index: [Int] = [Int]()
    
    init() {
        for i in stride(from: 1, to: 60, by: 1) {
            index.append(i)
        }
    }
}
