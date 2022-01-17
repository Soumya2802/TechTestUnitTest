//
//  TechTestTests.swift
//  TechTestTests
//
//  Created by Alex Jackson on 01/03/2021.
//

import XCTest
@testable import TechTest

class TechTestTests: XCTestCase {
    
   
    
    func testPostList(){
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/")!
        let expectation = expectation(description: "post_response")
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            
            XCTAssertNotNil(data)
            XCTAssertNil(error)
            
            expectation.fulfill()
        }
        task.resume()
        
        waitForExpectations(timeout: 5){ error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
        }//Wait block end
    }
    
    func testPostDetails(){
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/")! //random post number for testing.
        let expectation = expectation(description: "post_details_response")
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            
            XCTAssertNotNil(data)
            XCTAssertNil(error)
            
            expectation.fulfill()
        }
        task.resume()
        
        waitForExpectations(timeout: 5){ error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
        }//Wait block end
    }
    
    func testPostDetailsComments(){
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/Comments/")! //random post number for testing.
        let expectation = expectation(description: "post_details_comments_response")
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            
            XCTAssertNotNil(data)
            XCTAssertNil(error)
            
            expectation.fulfill()
        }
        task.resume()
        
        waitForExpectations(timeout: 5){ error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
        }//Wait block end
    }
}
