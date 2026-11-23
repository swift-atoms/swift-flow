extension Flow {
    /// Volume flow: how much volume passes per time, stored in cubic metres per second.
    public enum Volume {}
}

extension Flow.Volume: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: 3, time: -1) }
}

extension Flow.Volume {
    /// An amount of this kind, its scalar in cubic metres per second.
    public typealias Value<Scalar> = Tagged<Flow.Volume, Scalar>
}
