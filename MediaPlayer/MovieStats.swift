//
//  MovieStats.swift
//  
//
//  Created by jeffrey chiang on 10/6/19.
//

import Foundation

public struct MovieStats: Codable {
    
    public let page: Int
    public let totalResults: Int
    public let totalPages: Int
    public let results: [Movies]?
    
}

public struct Movies: Codable {
    
    public let popularity: Float
    public let voteCount: Int
    public let video: Bool
    public let posterPath: String
    public let id: Int
    public let adult: Bool
    public let backdropPath: String
    public let originalLanguage: String
    public let originalTitle: String
    public let genreIds: [Int]?
    public let title: String
    public let voteAverage: Float
    public let overview: String
    public let releaseDate: String

}
/*
extension Movies {
    
    static var tempMovies: [Movies]{
        
        return [Movies.tempMovie, Movies.tempMovie, Movies.tempMovie]
    }
    
    static var tempMovie: Movies {
        return Movies(popularity: 8, voteCount: 5, video: false, posterPath: "pathPoster", id: 5, adult: false, backdropPath: "backdore", originalLanguage: "en", originalTitle: "Joker", genreIds: nil, title: "title", voteAverage: 9.0, overview: "overview", releaseDate: "2005")
    }
}
*/
public struct MovieVideos: Codable {
    
    public let id: Int
    public let results: [Videos]?
}

public struct Videos: Codable {
    
    public let id: String
//    public let iso6391: String
//    public let iso31661: String
    public let key: String
    public let name: String
    public let site: String
    public let size: Int
    public let type: String
}


