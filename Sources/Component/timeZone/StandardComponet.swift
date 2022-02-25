//
//  StandardComponet.swift
//  
//
//

import Foundation

public class StandardComponet: VComponent {
    public let component = ICalComponent.standard
    
    /// This property defines the time zone offset from, that
    /// will be use in the event.
    ///
    /// See https://tools.ietf.org/html/rfc5545#section-3.6.5
    public var tzOffsetFrom: String
    
    /// This property defines a rule or repeating pattern for
    /// recurring events, to-dos, journal entries, or time zone
    /// definitions.
    ///
    /// See https://tools.ietf.org/html/rfc5545#section-3.8.5.3
    public var rrule: ICalRule
    
    /// This property defines the component start date,
    /// that will be use in the event.
    ///
    /// See https://tools.ietf.org/html/rfc5545#section-3.6.5
    public var dstart: Date
    
    /// This property defines the time zone name, that
    /// will be use in the event.
    ///
    /// See https://tools.ietf.org/html/rfc5545#section-3.6.5
    public var tzName: String
    
    /// This property defines the time zone offset to, that
    /// will be use in the event.
    ///
    /// See https://tools.ietf.org/html/rfc5545#section-3.6.5
    public var tzOffsetTo: String
    
    public var properties: [VContentLine?] {
        [
            .line("TZOFFSETFROM", tzOffsetFrom),
            .line("RRULE", rrule),
            .line("DTSTART", dstart),
            .line("TZNAME", tzName),
            .line("TZOFFSETTO", tzOffsetTo)
        ]
    }
    
    public init(
        tzOffsetFrom: String,
        rrule: ICalRule,
        dstart: Date,
        tzName: String,
        tzOffsetTo: String
    ) {
        self.tzOffsetFrom = tzOffsetFrom
        self.rrule = rrule
        self.dstart = dstart
        self.tzName = tzName
        self.tzOffsetTo = tzOffsetTo
    }
}
