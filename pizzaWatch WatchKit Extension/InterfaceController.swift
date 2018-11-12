//
//  InterfaceController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Vicente Ordoñez Garcia on 11/11/18.
//  Copyright © 2018 Vicente Ordoñez Garcia. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func SeleccionChica() {
        let pizzaCtx = Pizza(tam: "Chica")
        pushController(withName: "masaView", context: pizzaCtx)
    }
    
    @IBAction func seleccionMediana() {
        let pizzaCtx = Pizza(tam: "Mediana")
        pushController(withName: "masaView", context: pizzaCtx)
    }
    
    @IBAction func seleccionGrande() {
        let pizzaCtx = Pizza(tam: "Grande")
        pushController(withName: "masaView", context: pizzaCtx)
    }
}
