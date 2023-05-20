//
//  ViewModel.swift
//  Combine+StoryboardSample
//
//  Created by Rin on 2023/05/20.
//

import Combine

protocol ViewModelInput {
    func tappedButton()
}

protocol ViewModelOutput {
    var subject: PassthroughSubject<Int, Never> { get }
}

protocol ViewModelType {
    var input: ViewModelInput { get }
    var output: ViewModelOutput { get }
}

final class ViewModel: ViewModelInput, ViewModelOutput {

    let subject = PassthroughSubject<Int, Never>()
    let generator = RandomNumberGenerator()

    func tappedButton() {
        let number = generator.getNumber()
        print(number)
        subject.send(number)
    }
}

extension ViewModel: ViewModelType {
    var input: ViewModelInput { return self }
    var output: ViewModelOutput { return self }
}
