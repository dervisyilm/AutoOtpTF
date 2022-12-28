//
//  ContentView.swift
//  AutoOtpTF
//
//  Created by Dervis YILMAZ on 28.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        if #available(iOS 15, *){
            
            NavigationView{
                OTPVerificationView()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
            }
        }else{
            NavigationStack{
                OTPVerificationView()
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar(.hidden, for: .navigationBar)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
