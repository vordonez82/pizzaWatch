//
//  IngredientesController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Vicente Ordoñez Garcia on 11/11/18.
//  Copyright © 2018 Vicente Ordoñez Garcia. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    var pizzaCtx : Pizza = Pizza(tam: "")
    var ingredientes : String = ""

    @IBOutlet weak var opcionJamon: WKInterfaceSwitch!
    @IBOutlet weak var opcionSalchicha: WKInterfaceSwitch!
    @IBOutlet weak var opcionPeperonni: WKInterfaceSwitch!
    @IBOutlet weak var opcionPavo: WKInterfaceSwitch!
    @IBOutlet weak var opcionPiña: WKInterfaceSwitch!
    @IBOutlet weak var opcionAceituna: WKInterfaceSwitch!
    @IBOutlet weak var opcionCebolla: WKInterfaceSwitch!
    @IBOutlet weak var opcionPimiento: WKInterfaceSwitch!
    @IBOutlet weak var opcionAnchoa: WKInterfaceSwitch!
    
    
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
    
    @IBAction func opJamon(_ value: Bool) {
        let ingrediente = "Jamón, "
        if value == true {
            ingredientes = ingredientes + ingrediente
        }
        else {
            if ingredientes.contains(ingrediente)
            {
                ingredientes = ingredientes.replacingOccurrences(of: ingrediente, with: "")
            }
        }
    }
    
    @IBAction func opSalchicha(_ value: Bool) {
        let ingrediente = "Salchicha, "
        if value == true {
            ingredientes = ingredientes + ingrediente
        }
        else {
            if ingredientes.contains(ingrediente)
            {
                ingredientes = ingredientes.replacingOccurrences(of: ingrediente, with: "")
            }
        }
    }
    
    @IBAction func opPeperonni(_ value: Bool) {
        let ingrediente = "Peperonni, "
        if value == true {
            ingredientes = ingredientes + ingrediente
        }
        else {
            if ingredientes.contains(ingrediente)
            {
                ingredientes = ingredientes.replacingOccurrences(of: ingrediente, with: "")
            }
        }
    }
    
    @IBAction func opPavo(_ value: Bool) {
        let ingrediente = "Pavo, "
        if value == true {
            ingredientes = ingredientes + ingrediente
        }
        else {
            if ingredientes.contains(ingrediente)
            {
                ingredientes = ingredientes.replacingOccurrences(of: ingrediente, with: "")
            }
        }
    }
    
    @IBAction func opPiña(_ value: Bool) {
        let ingrediente = "Piña, "
        if value == true {
            ingredientes = ingredientes + ingrediente
        }
        else {
            if ingredientes.contains(ingrediente)
            {
                ingredientes = ingredientes.replacingOccurrences(of: ingrediente, with: "")
            }
        }
    }
    
    @IBAction func opAceituna(_ value: Bool) {
        let ingrediente = "Aceituna, "
        if value == true {
            ingredientes = ingredientes + ingrediente
        }
        else {
            if ingredientes.contains(ingrediente)
            {
                ingredientes = ingredientes.replacingOccurrences(of: ingrediente, with: "")
            }
        }
    }
    
    @IBAction func opCebolla(_ value: Bool) {
        let ingrediente = "Cebolla, "
        if value == true {
            ingredientes = ingredientes + ingrediente
        }
        else {
            if ingredientes.contains(ingrediente)
            {
                ingredientes = ingredientes.replacingOccurrences(of: ingrediente, with: "")
            }
        }
    }
    
    @IBAction func opPimiento(_ value: Bool) {
        let ingrediente = "Pimiento, "
        if value == true {
            ingredientes = ingredientes + ingrediente
        }
        else {
            if ingredientes.contains(ingrediente)
            {
                ingredientes = ingredientes.replacingOccurrences(of: ingrediente, with: "")
            }
        }
    }
    
    @IBAction func opAnchoa(_ value: Bool) {
        let ingrediente = "Anchoa, "
        if value == true {
            ingredientes = ingredientes + ingrediente
        }
        else {
            if ingredientes.contains(ingrediente)
            {
                ingredientes = ingredientes.replacingOccurrences(of: ingrediente, with: "")
            }
        }
    }
    
    
    @IBAction func siguiente() {
        if ingredientes != "" {
            pizzaCtx.ingredientes = ingredientes
            pushController(withName: "ValidacionView", context: pizzaCtx)
        }
        
    }
    
}
