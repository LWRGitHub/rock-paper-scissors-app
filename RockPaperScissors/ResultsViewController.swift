//
//  ResultsViewController.swift
//  RockPaperScissors


import UIKit

class ResultsViewController: UIViewController {

    var userSelection : GameOption!
    
    @IBOutlet weak var resultLabel: UILabel!
    //an outlet for the label
    
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomOption = GameOption.init()
        
        switch randomOption {
        case .rock:
            resultImage.image = UIImage(named: "rock")
        case .paper:
            resultImage.image = UIImage(named: "paper")
        case .scissors:
            resultImage.image = UIImage(named: "scissors")
        }
        
        //Depending on the result, show the legend "You won", "You lost", "It's a tie" in the label
        
        if userSelection == randomOption {
            resultLabel.text = "It's a tie"
        } else if userSelection == randomOption.weakness {
            resultLabel.text = "You Win!"
        } else {
            resultLabel.text = "You Lost!"
        }

    }
}
