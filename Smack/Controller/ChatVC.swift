//
//  ChatVC.swift
//  Smack
//
//  Created by Nived Pradeep on 09/01/19.
//  Copyright © 2019 Nived Pradeep. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
    }
    


  

}
