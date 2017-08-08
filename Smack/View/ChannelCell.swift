//
//  ChannelCell.swift
//  Smack
//
//  Created by Jeremy Clerico on 07/08/2017.
//  Copyright © 2017 Jeremy Clerico. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {
    
    //Outlets
    @IBOutlet weak var channelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        //What does the view look like for any of the rows in the table that you selected
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
    }
    
    func configureCell(channel: Channel) {
        let title = channel.channelTitle ?? "" //If no value return ""
        channelName.text = "#\(title)"
        channelName.font = UIFont(name: "HelveticaNeue-Regular", size: 17)
        
        for id in MessageService.instance.unreadChannels {
            if id == channel.id {
                channelName.font = UIFont(name: "HelveticaNeue-Bold", size: 22)
            }
        }
    }
}
