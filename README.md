# swift-flow

Use this package when a value is one of the kinds of flow. `Flow` is a namespace; each kind nested in it is a kind of quantity of swift-quantity, and an amount of it is a `Tagged<Flow.Kind, Scalar>`.

## Laws

- `Flow.Volume` is volume flow: how much volume passes per time, stored in cubic metres per second, of dimension length: 3, time: -1; make an amount with `Flow.Volume.amount(_:)`.
- Amounts of one kind add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- A volume over a duration is a volume flow, and a volume flow times a duration is a volume.
