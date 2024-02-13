import Foundation

enum Image {
    case one
    case two
    case three
    case four
    
    var imageLabel: String {
        switch self {
        case .one:
            return "Ce sofa est en velour de couleur vert."
        case .two:
            return "Ce luminaire est tout simplement parfait pour sublimer votre table a manger ou un salon"
        case .three:
            return "Fauteuil élégant accompagné de son repose pieds jaune orangé"
        case .four:
            return "Chaise blanche de style scandinave"
        }
    }
    
    var imageName: String {
        switch self {
        case .one :
            return "4"
        case .two:
            return "2"
        case .three:
            return "1"
        case .four:
            return "3"
        }
    }
}
