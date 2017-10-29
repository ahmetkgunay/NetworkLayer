//
//  UserResponse.swift
//  NetworkLayer
//
//  Created by AHMET KAZIM GUNAY on 29/10/2017.
//  Copyright © 2017 AHMET KAZIM GUNAY. All rights reserved.
//

import Foundation

public struct UserResponse: Codable {
    
    public let userName: String
    public let userId: Int
    public let avatarUrl: String?
    public let gravatarId: String?
    public let url: String
    public let htmlUrl: String
    public let followersUrl: String
    public let followingUrl: String
    public let gistsUrl: String
    public let starredUrl: String
    public let subscriptionsUrl: String?
    public let organizationsUrl: String?
    public let reposUrl: String?
    public let eventsUrl: String?
    public let receivedEventsUrl: String?
    public let type: String
    public let isSiteAdmin: Bool
    public let name: String?
    public let company: String?
    public let blog: String?
    public let location: String?
    public let email: String?
    public let isHireable: Bool
    public let bio: String?
    public let publicRepos: Int
    public let publicGists: Int
    public let followers: Int
    public let following: Int
    
    enum CodingKeys: String, CodingKey {
        case userName = "login", userId = "id", avatarUrl = "avatar_url", gravatarId = "gravatar_id", url, htmlUrl = "html_url", followersUrl = "followers_url", followingUrl = "following_url", gistsUrl = "gists_url", starredUrl = "starred_url", subscriptionsUrl = "subscriptions_url", organizationsUrl = "organizations_url", reposUrl = "repos_url", eventsUrl = "events_url", receivedEventsUrl = "received_events_url", type, isSiteAdmin = "site_admin", name, company, blog, location, email, isHireable = "hireable", bio, publicRepos = "public_repos", publicGists = "public_gists", followers,following
    }
}
