//
//  MasaController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Vicente Ordoñez Garcia on 11/11/18.
//  Copyright © 2018 Vicente Ordoñez Garcia. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {
    
    var pizzaCtx : Pizza = Pizza(tam: "")
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        pizzaCtx = context as! Pizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionDelgado() {
        pizzaCtx.masa = "Delgada"
        pushController(withName: "quesoView", context: pizzaCtx)
    }
    
    @IBAction func seleccionCrujiente() {
        pizzaCtx.masa = "Crujiente"
        pushController(withName: "quesoView", context: pizzaCtx)
    }
    
    @IBAction func seleccionGruesa() {
        pizzaCtx.masa = "Gruesa"
        pushController(withName: "quesoView", context: pizzaCtx)
    }
    
}
