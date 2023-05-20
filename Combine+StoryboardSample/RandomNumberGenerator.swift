//
//  RandomNumberGenerator.swift
//  Combine+StoryboardSample
//
//  Created by Rin on 2023/05/20.
//

import Foundation

final class RandomNumberGenerator {

    func getNumber() -> Int {
        Int.random(in: (0...100))
    }
}
