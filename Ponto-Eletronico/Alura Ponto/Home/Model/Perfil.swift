//
//  Perfil.swift
//  Alura Ponto
//
//  Created by Bruno Cassiano on 08/03/22.
//

import Foundation
import UIKit

class Perfil {
    
    func salvarImagem(_ imagem: UIImage) {
        
        guard let diretorio = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let nomeDaFoto = "perfil.png"
        let urlDoArquivo = diretorio.appendingPathComponent(nomeDaFoto)
        
        if FileManager.default.fileExists(atPath: urlDoArquivo.path) {
            removerImagemAntiga(urlDoArquivo.path)
            
        }
        
        guard let imagemData = imagem.jpegData(compressionQuality: 1) else { return }
        
        do {
            try imagemData.write(to: urlDoArquivo)
        } catch let error {
            print (error)
            
        }
    }
    
    private func removerImagemAntiga(_ url: String) {
        
        do {
           try  FileManager.default.removeItem(atPath: url)

        } catch let error {
            print(error)
        }
    }
    
    func carregarImagem() -> UIImage? {
        
        let diretorio = FileManager.SearchPathDirectory.documentDirectory
        let userDomainMask = FileManager.SearchPathDomainMask.userDomainMask
        
        let urlDoArquivo = NSSearchPathForDirectoriesInDomains(diretorio, userDomainMask, true)
        
        print(urlDoArquivo)
        
        return nil
    }
    
}
