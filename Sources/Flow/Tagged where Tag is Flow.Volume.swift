public import Quantity

extension Tagged::Tagged where Tag == Flow.Volume, Underlying: Numeric {
    /// The volume this flow carries in `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Time.Duration.Value<Underlying>) -> Volume<Space.Physical>.Value<Underlying> {
        Volume<Space.Physical>.amount(lhs.underlying * rhs.underlying)
    }
}
