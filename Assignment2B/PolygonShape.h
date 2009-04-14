//
//  PolygonShape.h
//  CLInfo
//
//  Created by Olly on 13/04/2009.
//  Copyright 2009 New Bamboo. All rights reserved.
//

@interface PolygonShape : NSObject {
	int numberOfSides;
	int minimumNumberOfSides;
	int maximumNumberOfSides;
}

@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property (readonly) float angleInDegrees;
@property (readonly) float angleInRadians;
@property (readonly) NSString *name;

- (id)init;
- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)minimum maximumNumberOfSides:(int)maximum;

@end
