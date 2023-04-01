@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension CollectionDifference.Change {
  var offset: Int {
    switch self {
    case let .insert(offset, _, _), let .remove(offset, _, _):
      return offset
    }
  }
}
