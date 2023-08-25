//
//  MovieModel.swift
//  MovieApp
//
//  Created by Brontosaurus on 20/08/23.
//

import Foundation

struct Movie : Identifiable {
    let id = UUID().uuidString
    let title: String
    let image: String
    let category: String
    let releasedate: String
    let rating: String
    let review: String
    let runningtime: String
}

var movies = [
    Movie (title: "Zom 100: Bucket List of the Dead",
           image: "bg-zom100",
           category: "Action, Comedy, Horror, Supernatural, Suspense",
           releasedate: "2023",
           rating: "13+",
           review: "4.8",
           runningtime: "2 hour 15 min"
          ),
    Movie (title: "Call Me Chihiro",
           image: "bg-callmechihiro",
           category: "Slice of Life, Drama",
           releasedate: "2023",
           rating: "13+",
           review: "4.7",
           runningtime: "2 hour 15 min"
          ),
    Movie (title: "Chupa",
           image: "bg-chupa",
           category: "Adventure",
           releasedate: "2023",
           rating: "SU",
           review: "4.7",
           runningtime: "2 hour 15 min"
          ),
    Movie (title: "Bayi Ajaib",
           image: "bg-bayiajaib",
           category: "Horror",
           releasedate: "2023",
           rating: "18+",
           review: "4.7",
           runningtime: "2 hour 15 min"
          ),
    Movie (title: "The Point Men",
           image: "bg-thepointman",
           category: "Action, Thriller, Drama",
           releasedate: "2023",
           rating: "R",
           review: "4.7",
           runningtime: "2 hour 15 min"
          ),
    Movie (title: "65",
           image: "bg-65",
           category: "Action, Thriller",
           releasedate: "2023",
           rating: "13+",
           review: "4.7",
           runningtime: "2 hour 15 min"
          )
    ]

