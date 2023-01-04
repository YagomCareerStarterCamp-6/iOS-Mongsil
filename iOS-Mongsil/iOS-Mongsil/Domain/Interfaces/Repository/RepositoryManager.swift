//
//  RepositoryManager.swift
//  iOS-Mongsil
//
//  Created by Groot on 2022/12/29.
//

import Foundation
import Combine

protocol DiaryRepositoryManager {
    var repository: DiaryRepository { get }
    
    func create(input: Diary) -> AnyPublisher<Void, Error>
    func read() -> AnyPublisher<[Diary], Error>
    func delete(date: Date) -> AnyPublisher<Void, Error>
}

protocol CommentRepositoryManager {
    var repository: CommentRepository { get }
    
    func create(input: Comment) -> AnyPublisher<Void, Error>
    func read() -> AnyPublisher<[Comment], Error>
    func update(input: Comment) -> AnyPublisher<Void, Error>
    func delete(date: Date) -> AnyPublisher<Void, Error>
}