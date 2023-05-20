//
//  Presenter.swift
//  Combine+StoryboardSample
//
//  Created by Rin on 2023/05/20.
//

import Foundation

protocol PresenterInput: AnyObject{
    func tappedButton()
}

protocol PresenterOutput: AnyObject {
    func showResult(num: Int)
}


final class Presenter: PresenterInput {

    private unowned let view: PresenterOutput
    private let generator = RandomNumberGenerator()

    init(view: PresenterOutput) {
        self.view = view
    }

    func tappedButton() {
        let number = generator.getNumber()
        view.showResult(num: number)
    }
}
