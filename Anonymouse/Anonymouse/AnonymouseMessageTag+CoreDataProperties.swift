//
//  AnonymouseMessageTag.swift
//  Anonymouse
//
//  Created by LiQinye on 12/1/16.
//  Copyright © 2016 1AM. All rights reserved.
//

import Foundation
import CoreData


extension AnonymouseMessageTag {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<AnonymouseMessageTag> {
        return NSFetchRequest<AnonymouseMessageTag>(entityName: "AnonymouseMessageTag");
    }
    
    @NSManaged public var tag: NSString?
    @NSManaged public var count: NSNumber?
}
