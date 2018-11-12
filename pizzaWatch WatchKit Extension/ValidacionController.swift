//
//  ValidacionController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Vicente Ordoñez Garcia on 11/11/18.
//  Copyright © 2018 Vicente Ordoñez Garcia. All rights reserved.
//

import WatchKit
import Foundation


class ValidacionController: WKInterfaceController {
    var pizzaCtx : Pizza = Pizza(tam: "")
    @IBOutlet weak var lblValidacion: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        pizzaCtx = context as! Pizza
        
         let orden : String = "Una pizza \(pizzaCtx.tamanio) con tipo de masa \(pizzaCtx.masa), tipo de queso \(pizzaCtx.queso), ingredientes: \(pizzaCtx.ingredientes)."
        
        lblValidacion.setText(orden)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func cancelarOrden() {
        pushController(withName: "TamanioView", context: pizzaCtx)
    }
    @IBAction func confrimarOrden() {
        pushController(withName: "ConfirmView", context: pizzaCtx)
    }
    
}
