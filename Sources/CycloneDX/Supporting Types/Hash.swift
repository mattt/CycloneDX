public struct Hash: Hashable {
    public var algorithm: String
    public var value: String

    public init(algorithm: String, value: String) {
        self.algorithm = algorithm
        self.value = value
    }
}

extension Hash: Encodable {
    private enum CodingKeys: String, CodingKey {
        case algorithm = "alg"
        case value
    }
}
