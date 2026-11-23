public import Quantity

extension Tagged::Tagged where Tag == Volume<Space.Physical>, Underlying: FloatingPoint {
    /// The flow of this volume passing in `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Time.Duration.Value<Underlying>) -> Flow.Volume.Value<Underlying> {
        Flow.Volume.amount(lhs.underlying / rhs.underlying)
    }
}
