//
//  AnonymouseMessageTag.swift
//  Anonymouse
//
//  Created by LiQinye on 12/1/16.
//  Copyright © 2016 1AM. All rights reserved.
//

import UIKit
import CoreData


class AnonymouseMessageTag: NSManagedObject {
    convenience init(tag: String) {
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext: NSManagedObjectContext = appDelegate.dataController.managedObjectContext
        let entity: NSEntityDescription? = NSEntityDescription.entity(forEntityName: "AnonymouseMessageTag", in: managedContext)
        self.init(entity: entity!, insertInto: managedContext)
        
        self.tag = tag as NSString?
        self.count = NSNumber(integerLiteral: 0)
    }
    
    func increment() {
        self.count = NSNumber(integerLiteral: self.count!.intValue + 1)
    }
    
    func decrement() {
        self.count = NSNumber(integerLiteral: self.count!.intValue - 1)
    }
}
