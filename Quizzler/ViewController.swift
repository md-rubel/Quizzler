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
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//         Do any additional setup after loading the view.
        setBackground()
        
        updateUI()
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
        
        questionNumber += 1
        
        updateUI()
        
    }
    
    func updateUI() {
        
        progressView.setProgress((Float(questionNumber) / 13.0), animated: true)
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber)/13"
        
        nextQuestion()
    }
    
    func nextQuestion() {
        
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        }
            
        else {
            let alart = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
//            TODO: eikhane app exit korar function add korte hobe
            let quitApp = UIAlertAction(title: "Exit", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alart.addAction(quitApp)
            alart.addAction(restartAction)
            present(alart, animated: true, completion: nil)
        }
        
    }
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct")
            score += 1
        }
        else {
            ProgressHUD.showError("Wrong!")
        }
        
    }
    
    func startOver() {
        
        questionNumber = 0
        score = 0
        
        progressView.setProgress(0.0, animated: true)
        
        updateUI()
    }
    
}

