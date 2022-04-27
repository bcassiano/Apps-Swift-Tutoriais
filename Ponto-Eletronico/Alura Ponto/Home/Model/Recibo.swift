//
//  Recibo.swift
//  Alura Ponto
//
//  Created by Ândriu Felipe Coelho on 29/09/21.
//

import Foundation
import UIKit
import CoreData

@objc(Recibo)
class Recibo: NSManagedObject {
    
    @NSManaged var id: UUID
    @NSManaged var status: Bool
    @NSManaged var data: Date
    @NSManaged var foto: UIImage
    @NSManaged var latitude: Double
    @NSManaged var longitude: Double
    
    
    convenience init(status: Bool, data: Date, foto: UIImage, latitude: Double, longitude: Double) {
        let contexto = UIApplication.shared.delegate as! AppDelegate
        self.init(context: contexto.persistentContainer.viewContext)
        self.id = UUID()
        self.status = status
        self.data = data
        self.foto = foto
        self.latitude = latitude
        self.longitude = longitude
    }
    
    class func serializa(_ json: [String: Any]) -> Recibo? {
        
        guard let dataString = json["data"] as? String,
              let data = FormatadorDeData().getData(dataString),
              let status = json ["status"] as? Bool
              else { return nil }
        
        guard let localizacao = json["localizacao"] as? [String: Any] else { return nil }
        
        let latitude = localizacao["latitude"] as? Double ?? 0.0
        let longitude = localizacao["longitude"] as? Double ?? 0.0
        
        return Recibo(status: status, data: data, foto: UIImage(), latitude: latitude, longitude: longitude)
    }

}

extension Recibo {
   
    // Mark: - Core Data - DAO
    
    class func fetchRequest() -> NSFetchRequest<Recibo> {
        return NSFetchRequest(entityName: "Recibo")
    }
    
    func salvar(_ contexo: NSManagedObjectContext) {
        do {
            try contexo.save()
        } catch {
            print (error.localizedDescription)
        
        }
    }
    
    class func carregar(_ fetchedResultController: NSFetchedResultsController<Recibo>) {
        do {
            try fetchedResultController.performFetch()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func deletar(_ contexto: NSManagedObjectContext) {
        contexto.delete(self)
        
        do {
            try contexto.save()
        } catch {
            print(error.localizedDescription)
        }
    }
}
