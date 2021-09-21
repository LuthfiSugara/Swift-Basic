import Foundation

//Associated Types with a Generic Where Clause
//You can include a generic where clause on an associated type. For example, suppose you want to make a version of Container that includes an iterator, like what the Sequence protocol uses in the standard library. Here’s how you write that:


protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }

    associatedtype Iterator: IteratorProtocol where Iterator.Element == Item
    func makeIterator() -> Iterator
}

protocol ComparableContainer: Container where Item: Comparable { }
