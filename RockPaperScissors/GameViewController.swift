//
//  GameViewController.swift
//  RockPaperScissors


import UIKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ResultsViewController
        switch segue.identifier {
        case "rock":
            vc?.userSelection = GameOption.rock
        case "paper":
            vc?.userSelection = GameOption.paper
        case "scissors":
            vc?.userSelection = GameOption.paper
        default:
            break
        }
    }
    
    @IBAction func unwindToGameView(segue:UIStoryboardSegue){
        
    }
    
}
