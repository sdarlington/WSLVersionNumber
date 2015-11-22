//
//  WSLVersionNumber.m
//  timesince
//
//  Created by Stephen Darlington on 21/11/2013.
//  Copyright (c) 2013 Wandle Software Limited. All rights reserved.
//

#import "WSLVersionNumber.h"

@implementation WSLVersionNumber

- (instancetype)initWithString:(NSString*)version {
    self = [self init];
    if (self) {
        self.version = version;
        [self updateNumbersFromVersion];
    }
    return self;
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<%p> Major: %ld Minor: %ld Revision: %ld",
            self, (long)self.major, (long)self.minor, (long)self.revision];
}

- (void)setMajor:(NSInteger)major {
    _major = major;
    [self updateVersionFromNumbers];
}

- (void)setMinor:(NSInteger)minor {
    _minor = minor;
    [self updateVersionFromNumbers];
}

- (void)setRevision:(NSInteger)revision {
    _revision = revision;
    [self updateVersionFromNumbers];
}

- (void)setVersion:(NSString *)version {
    if ([version isEqualToString:_version]) {
        return;
    }
    _version = [version copy];
    [self updateNumbersFromVersion];
}

- (void)updateVersionFromNumbers {
    self.version = [NSString stringWithFormat:@"%ld.%ld.%ld", (long)self.major, (long)self.minor, (long)self.revision];
}

- (void)updateNumbersFromVersion {
    NSArray* parts = [self.version componentsSeparatedByString:@"."];
    NSInteger c = [parts count];
    if (c >= 1) {
        self.major = [parts[0] integerValue];
    }
    if (c >= 2) {
        self.minor = [parts[1] integerValue];;
    }
    if (c == 3) {
        self.revision = [parts[2] integerValue];
    }
}

- (NSComparisonResult)compare:(WSLVersionNumber*)version {
    if (self.major == version.major && self.minor == version.minor && self.revision == version.revision) {
        return NSOrderedSame;
    }

    NSComparisonResult compare = [@(self.major) compare:@(version.major)];
    if (compare != NSOrderedSame) {
        return compare;
    }

    compare = [@(self.minor) compare:@(version.minor)];
    if (compare != NSOrderedSame) {
        return compare;
    }

    return [@(self.revision) compare:@(version.revision)];
}

@end
