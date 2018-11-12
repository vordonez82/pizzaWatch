//
//  ConfirmacionController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Vicente Ordoñez Garcia on 11/11/18.
//  Copyright © 2018 Vicente Ordoñez Garcia. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionController: WKInterfaceController {
    @IBOutlet weak var lblConfirm: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        lblConfirm.setText("Su orden ha sido tomada")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
