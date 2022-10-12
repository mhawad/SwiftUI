//
//  AlertTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/6/22.
//

import SwiftUI

struct AlertTest: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
   // @State var alertTitle: String = ""
    //@State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    
    enum MyAlerts {
        case success
        case error
        
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            VStack {
                Button("BUTTON 1") {
                   // alertTitle = "ERROR UPLOADING VIDEO"
                //    alertMessage = "The video could not be uploaded"
                    alertType = .error
                
                    showAlert.toggle()
                }
                .padding()
                Button("BUTTON 2") {
                   // alertTitle = "Successfully uploaded video  🥳 😀"
                    alertType = .success
                    showAlert.toggle()
                }
                
                
            }
            .alert(isPresented: $showAlert, content : {
                getAlert()
                
            })
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("This was an error!"))
        case .success:
            return Alert(title: Text("This was a success!"), message: nil,
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
//        return Alert(title:
//                     Text(alertTitle),
//                     message: Text(alertMessage),
//                     dismissButton: .default(Text("OK")))
        //return Alert(
        // title: Text("This is the title"),
        // message: nil
        //  message: Text("Here we will describe the error."),
        // primaryButton: .destructive(Text("Delete"), action: {
        //button action
        //    backgroundColor = .red
        //   }),
        //   secondaryButton: .cancel())
        //   Alert(title: Text("There was an error"))
    }
    
}

struct AlertTest_Previews: PreviewProvider {
    static var previews: some View {
        AlertTest()
    }
}
