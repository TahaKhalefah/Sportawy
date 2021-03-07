//
//  LeaguesAPI.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/24/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
// 

import Foundation
protocol LeaguesAPIProtocol {
    func getLeagues(completion: @escaping (Result<BaseResponse<[LeagueModel]>?, NSError>) -> Void)
    func getLeagueDetailes(by id: String, completion: @escaping (Result<BaseResponse<[LeagueDetailsModel]>? ,NSError>) -> Void)
}


class LeaguesAPI: BaseApi<LeaguesNetworking>, LeaguesAPIProtocol {
    
    //MARK:- Requests
    
    func getLeagues(completion: @escaping (Result<BaseResponse<[LeagueModel]>?, NSError>) -> Void) {
        self.fetchData(target: .getLeagues, responseClass: BaseResponse<[LeagueModel]>.self) { (result) in
            completion(result)
        }
    }
    
    func getLeagueDetailes(by id: String, completion: @escaping (Result<BaseResponse<[LeagueDetailsModel]>? ,NSError>) -> Void) {
        self.fetchData(target: .getDetailedLeague(id: id), responseClass: BaseResponse<[LeagueDetailsModel]>.self) { (result) in
            completion(result)
        }
    }
}
