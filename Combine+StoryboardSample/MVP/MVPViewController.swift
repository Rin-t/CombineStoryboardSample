//
//  MVPViewController.swift
//  Combine+StoryboardSample
//
//  Created by Rin on 2023/05/20.
//

import UIKit

final class MVPViewController: UIViewController {

    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func tappedButton(_ sender: Any) {
        presenter.tappedButton()
    }

    private var presenter: PresenterInput!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(view: self)
    }

}

extension MVPViewController: PresenterOutput {

    func showResult(num: Int) {
        resultLabel.text = String(num)
    }
}
