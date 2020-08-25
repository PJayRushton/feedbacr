//
//  ViewController.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 7/27/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import UIKit

class MainDashboardViewController: UIViewController {
    
    //    MARK: Outlets and Actions
    
    //    OUTLETS
    @IBOutlet weak var QRImageView: UIImageView!
    @IBOutlet weak var emailButtonOutlet: UIButton!
    @IBOutlet weak var textButtonOutlet: UIButton!
    
    //    ACTIONS
    
    @IBAction func tempSurveyButtonTapped(_ sender: Any) {
        present(navController!, animated: true, completion: nil)
        navController?.isNavigationBarHidden = true
    }
    @IBAction func emailButtonTapped(_ sender: Any) {
    }
    @IBAction func textButtonTapped(_ sender: Any) {
    }
    
    @IBAction func interviewJournalQuestionTapped(_ sender: Any) {
        
        let journalTableVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "InterviewQuestionsJournalTableViewController") as! InterviewQuestionJournalTableViewController
        
        navigationController?.pushViewController(journalTableVC, animated: true)
        
    }
    //    UNWIND SEQUES
    @IBAction func unwindMainDashboardSeque(segue: UIStoryboardSegue) {
        
    }
    
//    NAV VARIABLE
    var navController: UINavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let textResponseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TextResponseViewController") as! TextResponseViewController
       navController = UINavigationController(rootViewController:textResponseVC)
    }
    
    
}

