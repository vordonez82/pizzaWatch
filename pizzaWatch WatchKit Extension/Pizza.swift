//
//  Pizza.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Vicente Ordoñez Garcia on 11/11/18.
//  Copyright © 2018 Vicente Ordoñez Garcia. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : String = ""
    
    init(tam : String) {
        self.tamanio = tam
    }
}
