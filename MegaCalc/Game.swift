//
//  Game.swift
//  MegaCalc
//
//  Created by Mlumovic on 12/8/15.
//  Copyright (c) 2015 Mlumovic. All rights reserved.
//

import UIKit

class Game: UIViewController
{

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    
    var slotEmojis = [ "🐻", "🙈", "🐼", "🐶", "🐤"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    @IBAction func spinAction(sender: AnyObject)
    {
        let randomEmoji1 = Int (arc4random_uniform(UInt32(slotEmojis.count)))
        let randomEmoji2 = Int (arc4random_uniform(UInt32(slotEmojis.count)))
        let randomEmoji3 = Int (arc4random_uniform(UInt32(slotEmojis.count)))
        labelOne.text = slotEmojis[randomEmoji1]
        labelTwo.text = slotEmojis[randomEmoji2]
        labelThree.text = slotEmojis[randomEmoji3]
        
        if labelOne.text == labelTwo.text && labelTwo.text == labelThree.text
        {
            print("Jackpot!")
            jackpot()
        }
        
    }
    
    func jackpot()
    {
        let alert = UIAlertController(title: "JACKPOT!!", message: "You have won have a good day", preferredStyle: UIAlertControllerStyle.Alert)
        
        let resetButton = UIAlertAction(title: "PLAY AGIN?", style: UIAlertActionStyle.Default, handler: {sender in
            self.labelOne.text = "😍"
            self.labelTwo.text = "😍"
            self.labelThree.text = "😍"})
        
        alert.addAction(resetButton)
        presentViewController(alert, animated: true, completion: nil)
        
    }

   
}
