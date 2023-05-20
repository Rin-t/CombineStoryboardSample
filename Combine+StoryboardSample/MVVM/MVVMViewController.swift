//
//  MVVMViewController.swift
//  Combine+StoryboardSample
//
//  Created by Rin on 2023/05/20.
//

import UIKit
import Combine

final class MVVMViewController: UIViewController {


    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func tappedButton(_ sender: Any) {
        viewModel.input.tappedButton()
    }

    private var viewModel = ViewModel()
    private var cancellables = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.output.subject
            .sink { completion in
                print("completion")
            } receiveValue: { value in
                self.resultLabel.text = String(value)
            }
            .store(in: &cancellables)
    }
}

