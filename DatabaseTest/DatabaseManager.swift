//
//  DatabaseManager.swift
//  DatabaseTest
//
//  Created by Felix KHNEN on 30/9/2026.
//

import UIKit
import CoreData
class DatabaseManager: NSObject {
    var pizza: [NSManagedObject] = []
    func addRow (name:String,pr:Double, sz:String ){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let pizza = Pizza (context: managedContext)
        pizza.pizza_name = name
        pizza.price = pr
        pizza.size = sz
        do {
            try managedContext.save()
            print("Pizza Added")
        }
        catch{
            let nserror = error as NSError
            fatalError("Error Please Fix\(nserror),  \(nserror.userInfo)")
        }
    }
        
        func retrieveAllRows() -> String{
            var records = " "
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
                return records
            }
            let managedContext = appDelegate.persistentContainer.viewContext
            let fetchRequest: NSFetchRequest<Pizza> = Pizza.fetchRequest()
            do{
                let pizzas = try managedContext.fetch(fetchRequest)
                for trans in pizzas {
                    let pizza_name = trans.pizza_name
                    let price = trans.price
                    let size = trans.size
                    
                    records = records + "\(pizza_name ?? "" ), \(price), \(size ?? "")\n"
                }
            }
            catch let error as NSError{
                print ("Error\(error)")
            }
            return records
        }
        
    }


