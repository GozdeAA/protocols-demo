# protocols

A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.

In addition to specifying requirements that conforming types must implement, you can extend a protocol to implement some of these requirements or to implement additional functionality that conforming types can take advantage of.

https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols/

## Protocol Syntax

You define protocols in a very similar way to classes, structures, and enumerations:

protocol SomeProtocol {
    // protocol definition goes here
}

Custom types state that they adopt a particular protocol by placing the protocol’s name after the type’s name, separated by a colon, as part of their definition. Multiple protocols can be listed, and are separated by commas:

struct SomeStructure: FirstProtocol, AnotherProtocol {
    // structure definition goes here
}

If a class has a superclass, list the superclass name before any protocols it adopts, followed by a comma:

class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol {
    // class definition goes here
}


## Swift Protocols: Beyond Traditional Interfaces

Value Semantics: Swift protocols can be adopted by structs and enums, which are value types, not just classes (reference types). This is a significant departure from languages like Java, where interfaces can only be implemented by classes.
Extensions: Protocols in Swift can be extended to provide default implementations of methods, something traditional interfaces cannot do. This allows for code reuse without the need for inheritance or utility classes.
Protocol Composition: Swift allows protocols to be composed together using the ‘&’ operator, enabling types to conform to multiple protocols at once and ensuring a level of flexibility that’s not as easily achievable with classic interfaces.
Associated Types and Self Requirements: Protocols in Swift can specify requirements for associated types and enforce that methods return an instance of the conforming type (using ‘Self’), adding a layer of type safety and customization.

https://paigeshin1991.medium.com/swift-protocols-vs-other-languages-interfaces-understanding-the-differences-9e49be7f6769

