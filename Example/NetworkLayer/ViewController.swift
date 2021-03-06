//
//  ViewController.swift
//  NetworkLayer
//
//  Created by AHMET KAZIM GUNAY on 29/10/2017.
//  Copyright © 2017 AHMET KAZIM GUNAY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Assign request instance to cancel in future
        // Just call cancel() to assigned instance
        _ = Network.request(req: UserRequest(userName: "ahmetkgunay")) { (result) in
            
            switch result {
            case .success(let userResponse):
                print(userResponse)
            case .cancel(let cancelError):
                print(cancelError!)
            case .failure(let error):
                print(error!)
            }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

