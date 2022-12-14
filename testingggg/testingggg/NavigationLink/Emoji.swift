//
//  Emoji.swift
//  testingggg
//
//  Created by Mirna Helmy on 5/23/22.
//

import Foundation

struct Emoji {
    var id : UUID
    var name : String
    var symbol : String
    
    init(name: String, symbol: String ) {
        self.id = UUID()
        self.name = name
        self.symbol = symbol
    }
}




struct EmojiCategory {
    var id: UUID
    var name: String
    var symbol: String
    var emojiList: [Emoji]
    
    init(name: String, symbols: String, emojisList: [Emoji] ) {
        self.id = UUID()
        self.name = name
        self.symbol = symbols
        self.emojiList = emojisList
    }
    
    static let allCategories = [EmojiCategory(name: "Smileys & People", symbols: "๐๐ท๐จโ๐ป",
                                              emojisList: [Emoji(name: "grinning face", symbol: "๐"),
                                                           Emoji(name: "ghost", symbol: "๐ป"),
                                                           Emoji(name: "cowboy face", symbol: "๐ค "),
                                                           Emoji(name: "clown face", symbol: "๐คก"),
                                                           Emoji(name: "tooth", symbol: "๐ฆท"),
                                                           Emoji(name:  "policeman", symbol: "๐ฎโโ๏ธ"),
                                                           Emoji(name:  "woman scientist", symbol: "๐ฉโ๐ฌ"),
                                                           Emoji(name:  "gloves", symbol: "๐งค")
                                              ]),
                                EmojiCategory(name: "Animals & Nature", symbols: "๐ถ๐ฑ๐",
                                              emojisList: [Emoji(name: "dog face", symbol: "๐ถ"),
                                                           Emoji(name: "cat face", symbol: "๐ฑ"),
                                                           Emoji(name: "mouse face", symbol: "๐ญ"),
                                                           Emoji(name: "hamster face", symbol: "๐น"),
                                                           Emoji(name: "rabbit face", symbol: "๐ฐ"),
                                                           Emoji(name: "fox face", symbol: "๐ฆ"),
                                                           Emoji(name: "bear face", symbol: "๐ป"),
                                                           Emoji(name: "panda face", symbol: "๐ผ"),
                                                           Emoji(name: "polar bear", symbol: "๐ปโโ๏ธ"),
                                                           Emoji(name: "koala face", symbol: "๐จ"),
                                                           Emoji(name: "tiger face", symbol: "๐ฏ"),
                                                           
                                                           Emoji(name: "duck", symbol: "๐ฆ"),
                                                           Emoji(name: "eagle", symbol: "๐ฆ"),
                                                           Emoji(name: "bee", symbol: "๐"),
                                                           Emoji(name: "snake", symbol: "๐"),
                                                           Emoji(name: "chicken", symbol: "๐"),
                                                           Emoji(name: "T-Rex", symbol: "๐ฆ"),
                                                           Emoji(name: "dinosaur", symbol: "๐ฆ"),
                                                           Emoji(name: "fish", symbol: "๐"),
                                                           Emoji(name: "elephant", symbol: "๐"),
                                                           Emoji(name: "cat", symbol: "๐"),
                                                           Emoji(name: "rabbit", symbol: "๐"),
                                                           Emoji(name: "dragon", symbol: "๐"),
                                                           Emoji(name: "four leaf clover", symbol: "๐")
                                              ]),
                                EmojiCategory(name: "Food & Drink", symbols: "๐๐๐ฅ",
                                              emojisList: [Emoji(name: "green apple", symbol: "๐"),
                                                           Emoji(name: "pear", symbol: "๐"),
                                                           Emoji(name: "lemon", symbol: "๐"),
                                                           Emoji(name: "banana", symbol: "๐"),
                                                           Emoji(name: "kiwi", symbol: "๐ฅ"),
                                                           Emoji(name: "hamburger", symbol: "๐"),
                                                           Emoji(name: "taco", symbol: "๐ฎ"),
                                                           Emoji(name: "glass of milk", symbol: "๐ฅ"),
                                              ]),
                                EmojiCategory(name: "Activity", symbols: "โฝ๏ธ๐๐๏ธ",
                                              emojisList: [ Emoji(name: "soccer ball", symbol: "โฝ๏ธ"),
                                                            Emoji(name: "basketball", symbol: "๐"),
                                                            Emoji(name: "rugby football", symbol: "๐"),
                                                            Emoji(name: "diving mask", symbol: "๐คฟ"),
                                                            Emoji(name: "boxing glove", symbol: "๐ฅ"),
                                                            Emoji(name: "weightlifter", symbol: "๐๏ธ"),
                                                            Emoji(name: "golfer", symbol: "๐๏ธ"),
                                                            Emoji(name: "swimmer", symbol: "๐"),
                                                            Emoji(name: "headphones", symbol: "๐ง"),
                                              ]),
                                EmojiCategory(name: "Travel & Places", symbols: "๐๐ฒ๐",
                                              emojisList: [Emoji(name: "car", symbol: "๐"),
                                                           Emoji(name: "ambulance", symbol: "๐"),
                                                           Emoji(name: "bicycle", symbol: "๐ฒ"),
                                                           Emoji(name: "motorcycle", symbol: "๐"),
                                                           Emoji(name: "high-speed train", symbol: "๐"),
                                                           Emoji(name: "airplane", symbol: "โ๏ธ"),
                                                           Emoji(name: "rocket", symbol: "๐"),
                                                           Emoji(name: "passenger ship", symbol: "๐ณ"),
                                                           Emoji(name: "Statue of Liberty", symbol: "๐ฝ")
                                              ]),
                                EmojiCategory(name: "Objects", symbols: "๐ฑ๐ป๐งฒ",
                                              emojisList: [Emoji(name: "watch", symbol: "โ๏ธ"),
                                                           Emoji(name: "mobile phone", symbol: "๐ฑ"),
                                                           Emoji(name: "laptop", symbol: "๐ป"),
                                                           Emoji(name: "joystick", symbol: "๐น"),
                                                           Emoji(name: "studio microphone", symbol: "๐"),
                                                           Emoji(name: "stopwatch", symbol: "โฑ"),
                                                           Emoji(name: "credit card", symbol: "๐ณ"),
                                                           Emoji(name: "pill", symbol: "๐"),
                                                           Emoji(name: "bed", symbol: "๐"),
                                              ]),
                                EmojiCategory(name: "Symbols", symbols: "๐ฏโ๐ฆ",
                                              emojisList: [Emoji(name: "red heart", symbol: "โค๏ธ"),
                                                           Emoji(name: "radioactive", symbol: "โข๏ธ"),
                                                           Emoji(name: "hundred point symbol", symbol: "๐ฏ"),
                                                           Emoji(name: "check mark symbol", symbol: "โ"),
                                                           Emoji(name: "recycling symbol", symbol: "โป๏ธ"),
                                                           Emoji(name: "cellular signal bars", symbol: "๐ถ"),
                                                           Emoji(name: "musical notes", symbol: "๐ถ"),
                                                           Emoji(name: "green circle", symbol: "๐ข"),
                                                           Emoji(name: "one o'clock", symbol: "๐"),
                                              ]),
                                EmojiCategory(name: "Flags", symbols: "๐บ๐ธ๐ฆ๐ถ๐ฒ๐ฝ",
                                              emojisList: [Emoji(name: "flag of the United States", symbol: "๐บ๐ธ"),
                                                           Emoji(name: "flag of Mexico", symbol: "๐ฒ๐ฝ"),
                                                           Emoji(name: "pirate flag", symbol: "๐ดโโ ๏ธ"),
                                                           Emoji(name: "flag of Antarctica", symbol: "๐ฆ๐ถ"),
                                                           Emoji(name: "flag of American Samoa", symbol: "๐ฆ๐ธ"),
                                                           Emoji(name: "flag of Australia", symbol: "๐ฆ๐บ"),
                                                           Emoji(name: "flag of Brazil", symbol: "๐ง๐ท"),
                                                           Emoji(name: "flag of Canada", symbol: "๐จ๐ฆ"),
                                                           Emoji(name: "flag of Ukraine", symbol: "๐บ๐ฆ"),
                                              ])
    ]
}
