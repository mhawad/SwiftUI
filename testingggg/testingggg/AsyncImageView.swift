//
//  AsyncImageView.swift
//  testingggg
//
//  Created by Mirna Helmy on 9/30/22.
//

import SwiftUI

struct AsyncImageView: View {
    var imageURL = URL(string: "https: //cataas.com//cat?type=square")
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://cataas.com/cat?type=square")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 300)
            
            
            
            
            AsyncImage(url: imageURL) { phase in
                switch phase {
                case .empty:
                    ProgressView("Loading cat...")
                    
                case .success(let image):
                         image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                    
                case .failure:
                    Image(systemName: "shippingbox")
                    
                default:
                    EmptyView()
                    
                }
            }
        }
    }
    
}
struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
