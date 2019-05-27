//
//  ViewController.swift
//  Quizzler
//
//  Created by MD RUBEL on 19/5/19.
//  Copyright © 2019 MD RUBEL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//         Do any additional setup after loading the view.
        setBackground()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
    }
    
//    MARK: Set Background Image
    
    func setBackground() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.image = UIImage(named: "background")
        view.sendSubviewToBack(backgroundImageView)
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        
    }
    
    func updateUI() {
        
    }
    
    func nextQuestion() {
        
    }
    
    func checkAnswer() {
        
    }
    
    func startOver() {
        
    }
    
}

