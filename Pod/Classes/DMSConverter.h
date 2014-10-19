//
//  DMSConverter.h
//  Pods
//
//  Created by Suraj Shirvankar on 10/1/14.
//
//
#import <MapKit/MapKit.h>
#import <Foundation/Foundation.h>

@interface DMSConverter : NSObject

+ (NSString *)LatitudeAndLongitudeToDMS:(CLLocationCoordinate2D)LatitudeAndLongitudeCordinates;
+ (CLLocationCoordinate2D)DMSToLattitudeAndLonitude:(NSString *)DMSString;

+ (NSString *)LatitudeAndLongitudeToDMSWithFormat:(CLLocationCoordinate2D)LatitudeAndLongitudeCordinates withFormat:(NSString *)stringFormat;
@end
