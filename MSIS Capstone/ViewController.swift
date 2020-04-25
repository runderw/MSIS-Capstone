//
//  ViewController.swift
//  MSIS Capstone
//
//  Created by Lavada Blanton on 4/25/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Firebase

class ViewController: UIViewController {

    var db: Firestore!

    override func viewDidLoad() {
        super.viewDidLoad()

        // [START setup]
        let settings = FirestoreSettings()

        Firestore.firestore().settings = settings
        // [END setup]
        db = Firestore.firestore()
    }
        // Do any additional setup after loading the view.

    private func setDocument() {
          // [START set_document]
          // Add a new document in collection "attendance"
          db.collection("attendance").document("4-12-2020").setData([
              "CWID": "A1234567",
              "email": "email@okstate.edu",
              "Password": "TestPassword123"
          ]) { err in
              if let err = err {
                  print("Error writing document: \(err)")
              } else {
                  print("Document successfully written!")
              }
          }
          // [END set_document]
      }

    
    
    
    
    
    /*
    // Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
