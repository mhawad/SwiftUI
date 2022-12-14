//
//  SecondEmojiView.swift
//  testingggg
//
//  Created by Mirna Helmy on 5/24/22.
//

import SwiftUI

struct SecondEmojiView: View {
    
    let emojiCategory: EmojiCategory
    
    var body: some View {
        List(emojiCategory.emojiList, id: \.id){ emoji in
            NavigationLink(
                destination: ThirdEmojiView(emoji: emoji),
                label: {
                    HStack {
                        Text(emoji.name.capitalized)
                        Spacer()
                        Text(emoji.symbol)
                    }
                })
        }
        .navigationTitle(Text("Category: \(emojiCategory.name)"))
    }
}

struct SecondEmojiView_Previews: PreviewProvider {
    static var previews: some View {
        SecondEmojiView(emojiCategory: EmojiCategory.allCategories[0])
    }
}

