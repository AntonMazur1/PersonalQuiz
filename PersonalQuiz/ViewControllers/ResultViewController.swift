//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 07.07.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    var answers: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        getResult()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    private func setupLabels() {
        for answer in answers {
            resultLabel.text = "Вы - \(answer.animal.rawValue)"
            descriptionLabel.text = answer.animal.definition
        }
    }
    
    private func getResult() {
        for answer in answers {
            switch answer.animal {
            case .dog:
                setupLabels()
            case .cat:
                setupLabels()
            case .rabbit:
                setupLabels()
            case .turtle:
                setupLabels()
            }
        }
    }
}
