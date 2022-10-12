//
//  GridWithNavigationLink.swift
//  testingggg
//
//  Created by Mirna Helmy on 5/24/22.
//

import SwiftUI

struct GridWithNavigationLink: View {
    
    
    let allGridMenuCategories = GridMenuCategory.allGridCategories

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
       
        
        NavigationView{
            LazyVGrid(columns: columns) {
            ForEach(allGridMenuCategories) { gridMenuCategory in
                
                NavigationLink("Calendar", destination: ColorPickerTest())
                    .padding()
                NavigationLink("Tuition", destination: ColorPickerTest())
                    .padding()
                NavigationLink("Admission", destination:ColorPickerTest())
                    .padding()
                
                
                NavigationLink("Calendar", destination: ColorPickerTest())
                    .padding()
                NavigationLink("Tuition", destination: ColorPickerTest())
                    .padding()
                NavigationLink("Admission", destination: ColorPickerTest())
                    .padding()            }
            .navigationBarTitleDisplayMode(.inline)

        }
            .navigationViewStyle(StackNavigationViewStyle())

        
        }
        
    }
}


struct GridMenuItem {
    var id : UUID
    var name : String
    
    
    init(name: String ) {
        self.id = UUID()
        self.name = name
        
    }
}



struct GridMenuCategory: Identifiable {
    var id: UUID
    var name: String
    var gridMenuList: [GridMenuItem]
    
    init(name: String, gridMenuList: [GridMenuItem] ) {
        self.id = UUID()
        self.name = name
        self.gridMenuList = gridMenuList
    }
    
    
    
    static let allGridCategories = [
    
        GridMenuCategory(name: "Transportation",
                         gridMenuList: [GridMenuItem(name: "1st grade"),
                                        GridMenuItem(name: "2nd grade"),
                                        GridMenuItem(name: "3rd grade"),
                          ])
    
    
    ]
}

 

struct GridWithNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        GridWithNavigationLink()
    }
}






        
        
        

        
        
        
        




