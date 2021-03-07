//
//  TeamAPI.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/25/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
protocol TeamsAPIProtocol {
    func getTeams(by id: String, completion: @escaping (Result<BaseResponse<[TeamModel]>? ,NSError>) -> Void)
}


class TeamAPI: BaseApi<TeamsNetworking>, TeamsAPIProtocol {
    	
    //MARK:- Requests
    func getTeams(by id: String, completion: @escaping (Result<BaseResponse<[TeamModel]>? ,NSError>) -> Void) {
        self.fetchData(target: .getTeams(id: id), responseClass: BaseResponse<[TeamModel]>.self) { (result) in
            completion(result)
        }
    }
}
