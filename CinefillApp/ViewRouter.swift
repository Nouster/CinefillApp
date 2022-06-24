//
//  ViewRouter.swift
//  Projet OLIS
//
//  Created by apprenant50 on 16/05/2022.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject{
    @Published var currentPage: Page = .cinema

}
enum Page {
    case cinema
    case profile
    case cart
    case films
    case events
}

