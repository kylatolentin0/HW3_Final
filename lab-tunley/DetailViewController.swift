//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!

    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!

    // TODO: Pt 1 - Add a track property


    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the artworkUrl100 URL and set it on the image view.
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w300/" + track.poster_path)
        //let baseURL =  URL(string: "https://image.tmdb.org/t/p/original%22")!
        //let path = baseURL.appendingPathComponent(track.poster_path)
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: imageUrl!, into: trackImageView)

        // Set labels with the associated track values.
        trackNameLabel.text = track.original_title
        artistLabel.text = track.overview
        albumLabel.text = String(track.popularity)
        genreLabel.text = String(track.vote_average)

        // Create a date formatter to style our date and convert it to a string

        // Use helper method to convert milliseconds into mm:ss string format
        durationLabel.text = String(track.vote_count)

    }

}
