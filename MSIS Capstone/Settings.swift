//  Settings.swift
//  FinalProjectMSIS
//
//  Created by Robert Underwood on 3/31/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//



import SwiftUI
import SQLite3


struct Settings: View {

   @State var CWID = ""
    @State var email = ""
    @State var Password = ""
    @State var submit = false
    
    
    var body: some View {
        
        NavigationView {
            Form {
              
                
                Section(header: Text("Credentials").font(.callout).padding(.top).padding(.bottom))
                {
                    
                    Text("CWID").font(.body)
                    TextField("Enter CWID", text: $CWID)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                       Text("Email").font(.body)
                    TextField("Your email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Password").font(.subheadline)
                    TextField("Password", text: $Password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Button(action: { self.submit.toggle() }) {
                    
                    Text("Submit")
                }

                  
                    
                .navigationBarTitle(Text("Attendance"))
            }
            
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        
        Settings()
    }
}

