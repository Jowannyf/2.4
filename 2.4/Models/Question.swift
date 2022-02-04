//
//  Question.swift
//  2.4
//
//  Created by Andrew Bondarenko on 18.01.2022.
//

struct Question {
    let title: String
    let answers: [Answer]
    let type: ResponseType
    
    static func getQuestions() -> [Question] {
        [
         Question(title: "Какую пищу вы предпочитаете?",
                  answers: [Answer(title: "Стейк", animal: .dog),
                            Answer(title: "Рыбка", animal: .cat),
                            Answer(title: "Морковь", animal: .rabbit),
                            Answer(title: "Кукуруза", animal: .turtle),],
                  type: .single),
         Question(title: "Что вам нравиться больше?",
                  answers: [Answer(title: "Плавать", animal: .dog),
                            Answer(title: "Спать", animal: .cat),
                            Answer(title: "Обниматься", animal: .rabbit),
                            Answer(title: "Есть", animal: .turtle)],
                  type: .multiple),
         Question(title: "Любите ли вы поездки на машине?",
                  answers: [Answer(title: "Ненавижу", animal: .cat),
                            Answer(title: "Нервничаю", animal: .rabbit),
                            Answer(title: "Не замечаю", animal: .turtle),
                            Answer(title: "Обожаю", animal: .dog)],
                  type: .ranged)
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми,которые вам нравятся и всегда готовы помочь"
        case .cat:
            return "бффбфббфбф"
        case .rabbit:
            return "бффбфббфбф"
        case .turtle:
            return "бффбфббфбф"
        }
        
    }
}
