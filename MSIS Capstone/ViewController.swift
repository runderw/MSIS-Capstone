//
//  ViewController.swift
//  MSIS Capstone
//
//  Created by Lavada Blanton on 4/25/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//
import UIKit
import SQLite3



class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //this section opens the connection to the database
         var db: OpaquePointer?
        
        let fileURL = try!
            FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        .appendingPathComponent("AITPDatabase.sqlite")
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("Error opening database.")
            return
        }
        //this code creates the database table for attendance using SQL
        let createTableQuery = "CREATE TABLE IF NOT EXISTS Attendance (id INTEGER PRIMARY KEY AUTOINCREMENT, CWID TEXT, email TEXT, password TEXT)"
        
        //this is the execution code
        if sqlite3_exec(db, createTableQuery, nil, nil, nil) != SQLITE_OK {
            print("Error creating table.")
            return
        }
        
        print("Everything is working fine.")
    }

}



