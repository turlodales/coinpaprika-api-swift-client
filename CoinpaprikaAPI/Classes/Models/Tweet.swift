//
//  Tweet.swift
//  Pods
//
//  Created by Dominique Stranz on 16/11/2018.
//

import Foundation

/// Tweet
public struct Tweet: Codable, Equatable, CodableModel {
    
    /// Tweet text, eg. Bitcoin Core 0.17.0 Released
    public let status: String
    
    /// Twitter user name, eg. bitcoincoreorg
    public let userName: String
    
    /// Is it retweeted tweet
    public let isRetweet: Bool
    
    /// Tweet publish date
    public let date: Date
    
    /// Twitter link
    public let statusLink: URL
    
    /// Attached image or video link
    public let mediaLink: URL?
    
    /// Attached video link
    public let videoLink: URL?
    
    /// Attached image link
    public var imageLink: URL? {
        guard let url = mediaLink, url.pathExtension != "mp4" else {
            return nil
        }
        
        return url
    }

    
    enum CodingKeys: String, CodingKey {
        case status
        case userName = "user_name"
        case isRetweet = "is_retweet"
        case date
        case statusLink = "status_link"
        case mediaLink = "media_link"
        case videoLink = "video_link"
    }

}
