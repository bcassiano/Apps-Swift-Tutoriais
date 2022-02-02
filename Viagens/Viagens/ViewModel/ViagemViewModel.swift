//
//  ViagemViewModel.swift
//  Viagens
//
//  Created by Bruno Cassiano on 02/02/22.
//

import Foundation
import UIKit

enum ViagemViewModelType: String {
    case destaques
    case ofertas
    case internacionais
}

protocol ViagemViewModel {
    var tituloSessao: String { get }
    var tipo: ViagemViewModelType { get }
    var viagens: [Viagem] { get set }
    var numeroDeLinhas: Int { get }
}
