//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Kyla Tolentino on 9/10/23.
//

import UIKit

import Nuke

class TrackCell: UITableViewCell {
    
    
    @IBOutlet weak var trackImageView: UIImageView!
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    /// Configures the cell's UI for the given track.
    func configure(with track: Track) {
        trackNameLabel.text = track.original_title
        artistNameLabel.text = track.overview
        
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w300/" + track.poster_path)
        //let baseURL =  URL(string: "https://image.tmdb.org/t/p/original%22")!
        //let path = baseURL.appendingPathComponent(track.poster_path)
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: imageUrl!, into: trackImageView)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
