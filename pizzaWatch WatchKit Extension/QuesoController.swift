//
//  QuesoController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Vicente Ordoñez Garcia on 11/11/18.
//  Copyright © 2018 Vicente Ordoñez Garcia. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {
    var pizzaCtx : Pizza = Pizza(tam: "")

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        pizzaCtx = context as! Pizza
        print(pizzaCtx.tamanio)
        print(pizzaCtx.masa)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionMozarella() {
        pizzaCtx.queso = "Mozarella"
        pushController(withName: "IngredientesView", context: pizzaCtx)
    }
    
    @IBAction func seleccionCheddar() {
        pizzaCtx.queso = "Cheddar"
        pushController(withName: "IngredientesView", context: pizzaCtx)

    }
    
    @IBAction func seleccionParmesano() {
        pizzaCtx.queso = "Parmessano"
        pushController(withName: "IngredientesView", context: pizzaCtx)

    }
    
    @IBAction func seleccionSinQueso() {
        pizzaCtx.queso = "Sin queso"
        pushController(withName: "IngredientesView", context: pizzaCtx)

    }
    
}
