//
//  CompanyDetail.swift
//  MSIS Capstone
//
//  Created by Robert Underwood on 4/23/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//
//
//  CompanyDetail.swift
//  FinalProjectMSIS
//
//  Created by Robert Underwood on 3/31/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//


import SwiftUI

struct CompanyDetail: View {
    //dummy variables 
    var title = "default"
    var image  = "Conoco"
    var label = "label ksdjfh dksjfhg ksdfgh kjsdfg dsfgkjh sdfkjgh dskjfgh skdjfhg kjdshfgjksdgsdhfgkjhsdfg jk sdfkjghsdkjfgjsdfh kjsdfhg kjsdfhgjksdfghkjsdfgsdfg kj sdfgkjhdfglabel ksdjfh dksjfhg ksdfgh kjsdfg dsfgkjh sdfkjgh dskjfgh skdjfhg kjdshfgjksdgsdhfgkjhsdfg jk sdfkjghsdkjfgjsdfh kjsdfhg kjsdfhgjksdfghkjsdfgsdfg kj sdfgkjhdfglabel ksdjfh dksjfhg ksdfgh kjsdfg dsfgkjh sdfkjgh dskjfgh skdjfhg kjdshfgjksdgsdhfgkjhsdfg jk sdfkjghsdkjfgjsdfh kjsdfhg kjsdfhgjksdfghkjsdfgsdfg kj sdfgkjhdfglabel ksdjfh dksjfhg ksdfgh kjsdfg dsfgkjh sdfkjgh dskjfgh skdjfhg kjdshfgjksdgsdhfgkjhsdfg jk sdfkjghsdkjfgjsdfh kjsdfhg kjsdfhgjksdfghkjsdfgsdfg kj sdfgkjhdfg"
    
    var body: some View {
        ZStack{
            
            Color.white
                
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 19.0){
                
                // WE call titile
                
                Image(image)
                    
                    .resizable()
                    
                    .aspectRatio(contentMode: .fit)
                    
                    .frame(height: 200)
                
                //    Text(title)
                //        .font(.title)
                //       .fontWeight(.bold)
                //      .foregroundColor(Color.black)
                //     .multilineTextAlignment(.center)
                
                
                
                Divider()
                
                Text(label)
                    
                    .fontWeight(.medium)
                    .font(.body)
                    
                    .multilineTextAlignment(.center)
                    
                    .padding()
                    
                    .foregroundColor(Color.black)
                    
                    .overlay(
                        
                        RoundedRectangle(cornerRadius: 20)
                            
                            .stroke(Color.gray, lineWidth: 1)
                        
                )
                
            }.offset(y: -150)
            
            VStack{
                Text("hyperlink here")
            }.offset(y: 180)
            
            
            
            
        }.offset(y:80)
        
    }
}

struct CompanyDetail_Previews: PreviewProvider {
    static var previews: some View {
        CompanyDetail()
    }
}
