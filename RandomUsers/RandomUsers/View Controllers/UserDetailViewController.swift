//
//  UserDetailViewController.swift
//  RandomUsers
//
//  Created by Mitchell Budge on 9/5/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {

    var user: User? {
        didSet {
         updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard isViewLoaded,
            let user = user else { return }
        title = user.name.first.capitalized
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
