import Flow
import Testing

enum `Flow Tests` {}

extension `Flow Tests` {
    @Suite struct `Flow holds kinds of quantity` {
        @Test func `Volume is in cubic metres per second, of dimension length: 3, time: -1`() {
            #expect(Flow.Volume.dimension == Quantity.Dimension(length: 3, time: -1))
            #expect(Flow.Volume.amount(2.5).underlying == 2.5)
        }
    }

    @Suite struct `A volume flow is a volume over a duration` {
        @Test func `Its dimension balances`() {
            #expect(Flow.Volume.dimension == Volume<Space.Physical>.dimension / Time.Duration.dimension)
        }

        @Test func `A volume over a duration, and back`() {
            let flow = Volume<Space.Physical>.amount(6.0) / Time.Duration.seconds(2.0)
            #expect(flow == Flow.Volume.amount(3.0))
            #expect(flow * Time.Duration.seconds(2.0) == Volume<Space.Physical>.amount(6.0))
        }
    }
}
