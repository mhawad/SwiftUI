//
//  MasterGrid.swift
//  testingggg
//
//  Created by Mirna Helmy on 5/20/22.
//

import SwiftUI

struct Item: Identifiable {
    
    let id = UUID()
    let title: String
    let image: String
    let imgColor: Color
}




struct MasterGrid: View {
    
    let items = [
        Item(title: "Home" , image: ("heart"), imgColor: .orange),
        Item(title: "Money" , image:("heart") , imgColor: .green),
        Item(title: "Bank", image: ("heart"), imgColor: Color.black.opacity(0.8)),
        Item(title: "Vacation", image: ("heart"), imgColor: .blue),
        Item(title: "User", image: ("heart"), imgColor: .purple),
        Item(title: "Charts", image: ("heart"), imgColor: .pink)
        
    ]
    
    let spacing: CGFloat = 10
    @State private var numberOfColumns = 3
    
    
    var body: some View {
        
        let columns = Array(
            repeating: GridItem(.flexible(), spacing: spacing),
            count: numberOfColumns)
  
        
        ScrollView {
            headerView
            
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(items) { item in
                    ItemView(item: item)
//                    Button(action: {}) {
//                        ItemView(item: item)
//                    }
                    //  .buttonStyle(PlainListStyle())
                }
                
            }
            .padding(.horizontal)
            .offset(y: -50)
        }
        .background(Color.white)
        ignoresSafeArea()
    }
    

    var headerView: some View {
        VStack {
            Image("image")
                .resizable()
                .frame(width: 110, height: 110)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
//                .onTapGesture {
//                    numberOfColumns = numberOfColumns % 3 + 1
//                }
            
            Text("Selina Blake")
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .medium, design: .rounded))
            
            Text("Change the world by being yourself")
                .foregroundColor(Color.white.opacity(0.7))
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .multilineTextAlignment(.center)
        }
        .frame(height: 350)
        .frame(maxWidth: .infinity)
        .background(Color.purple)
    }
    

}



struct ItemView: View {
    
    let item: Item
    
    var body: some View {
        GeometryReader { reader in
            
            let fontSize = min(reader.size.width * 0.2, 28)
            let imageWidth: CGFloat = min(50, reader.size.width * 0.6)
            
            
            VStack(spacing: 5) {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(item.imgColor)
                    .frame(width: imageWidth)
                
                
                Text(item.title)
                    .font(.system(size: fontSize, weight: .bold, design:
                            .rounded))
                    .foregroundColor(Color.black.opacity(0.9))
            }
            .frame(width: reader.size.width, height: reader.size.height)
            .background(Color.blue)
        }
        .frame(height: 150)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: Color.black.opacity(0.2), radius: 10, y: 5)
    }
    
    
}


struct MasterGrid_Previews: PreviewProvider {
    static var previews: some View {
        MasterGrid()
    }
}
