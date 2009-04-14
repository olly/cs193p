//
//  PolygonShape.m
//  CLInfo
//
//  Created by Olly on 13/04/2009.
//  Copyright 2009 New Bamboo. All rights reserved.
//

#import "PolygonShape.h"


@implementation PolygonShape

@synthesize numberOfSides;
@synthesize minimumNumberOfSides;
@synthesize maximumNumberOfSides;

- (id) init {
	return [self initWithNumberOfSides:5 minimumNumberOfSides:3 maximumNumberOfSides:10];
}

- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)minimum maximumNumberOfSides:(int)maximum {
	if(self = [super init]) {
		minimumNumberOfSides = 2;
		maximumNumberOfSides = 12;
		self.numberOfSides = sides;
		self.minimumNumberOfSides = minimum;
		self.maximumNumberOfSides = maximum;
	}
	
	return self;
}

- (void)dealloc {
	NSLog(@"De-allocating polygon");
	[super dealloc];	
}

- (void)setNumberOfSides:(int)newNumberOfSides {
	if(newNumberOfSides < self.minimumNumberOfSides) {
		NSLog(@"Invalid number of sides: %d is less than the minimum of %d allowed.", newNumberOfSides, self.maximumNumberOfSides);
	}
	
	if(newNumberOfSides > self.maximumNumberOfSides) {
		NSLog(@"Invalid number of sides: %d is greater than the maximum of %d allowed.", newNumberOfSides, self.maximumNumberOfSides); 
		return;
	}
	
	numberOfSides = newNumberOfSides;
}

- (void)setMinimumNumberOfSides:(int)newMinimumNumberOfSides {
	if(newMinimumNumberOfSides < 2) {
		NSLog(@"Invalid minimum number of sides: %d is less than 2", newMinimumNumberOfSides);
		return;
	}
	
	minimumNumberOfSides = newMinimumNumberOfSides;
}

- (void)setMaximumNumberOfSides:(int)newMaximumNumberOfSides {
	if(newMaximumNumberOfSides > 12) {
		NSLog(@"Invalid maximum number of sides: %d is greater than 12", newMaximumNumberOfSides);
		return;
	}
	
	maximumNumberOfSides = newMaximumNumberOfSides;
}

- (float)angleInDegrees {
	return (180 * (numberOfSides - 2) / numberOfSides);
}

- (float)angleInRadians {
	return (3.14159265358979323846 * (numberOfSides - 2) / numberOfSides);
}

- (NSString *)name {
	NSDictionary *names;
	names = [NSDictionary dictionaryWithObjectsAndKeys:
						  @"digon", [NSNumber numberWithInt:2],
						  @"triangle", [NSNumber numberWithInt:3],
						  @"quadrilateral", [NSNumber numberWithInt:4],
						  @"pentagon", [NSNumber numberWithInt:5],
						  @"hexagon", [NSNumber numberWithInt:6],
						  @"heptagon", [NSNumber numberWithInt:7],
						  @"octagon", [NSNumber numberWithInt:8],
						  @"enneagon", [NSNumber numberWithInt:9],
						  @"decagon", [NSNumber numberWithInt:10],	
						  @"hendecagon", [NSNumber numberWithInt:11],
						  @"dodecagon", [NSNumber numberWithInt:12],
						  nil];
	return [names objectForKey:[NSNumber numberWithInt:self.numberOfSides]];
}

- (NSString *)description {
	return [NSString stringWithFormat:@"Hello I am a %d-sided polygon (aka a %@) with angles of %.2f degrees (%.6f radians).", self.numberOfSides, self.name, self.angleInDegrees, self.angleInRadians];
//	return [NSString stringWithFormat:@"Hello I am a %d-sided polygon (aka a %@) with angles of %.6f degrees (%.6f radians).", self.numberOfSides, self.name, self.angleInDegrees, self.angleInRadians];
}
@end
