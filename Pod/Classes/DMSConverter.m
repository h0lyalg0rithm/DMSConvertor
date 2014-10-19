//
//  DMSConverter.m
//  Pods
//
//  Created by Suraj Shirvankar on 10/1/14.
//
//

#import "DMSConverter.h"

@implementation DMSConverter

+(NSString *)LatitudeAndLongitudeToDMS:(CLLocationCoordinate2D)LatitudeAndLongitudeCordinates{
    
    int latDegrees = (int)LatitudeAndLongitudeCordinates.latitude;
    float tmpMinutes = ABS(LatitudeAndLongitudeCordinates.latitude - latDegrees);
    int latMinutes = (int)(tmpMinutes * 60);
    float tmpSeconds = (tmpMinutes * 60) - (int)(tmpMinutes * 60);
    int latSeconds = (int)(tmpSeconds * 60);
    
    int longDegrees = (int)LatitudeAndLongitudeCordinates.longitude;
    int longSeconds = (int)(LatitudeAndLongitudeCordinates.longitude * 3600);
    longSeconds = longSeconds % 3600;
    int longMinutes = longSeconds / 60;
    longSeconds %= 60;
    
    NSString* result = [NSString stringWithFormat:@"%d°%d'%d\"%@ %d°%d'%d\"%@",
                        ABS(latDegrees),
                        latMinutes,
                        latSeconds,
                        latDegrees >= 0 ? @"N" : @"S",
                        ABS(longDegrees),
                        longMinutes,
                        longSeconds,
                        longDegrees >= 0 ? @"E" : @"W"];
    
    return result;
}

//+ (CLLocationCoordinate2D)DMSToLattitudeAndLonitude:(NSString *)DMSString{
//    return CLLocationCoordinate2DMake(10, 10);
//}
//
//+ (NSString *)LatitudeAndLongitudeToDMSWithFormat:(CLLocationCoordinate2D)LatitudeAndLongitudeCordinates withFormat:(NSString *)stringFormat{
//    NSError *error = NULL;
//    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"(\d+)"
//                                                      options:NSRegularExpressionCaseInsensitive
//                                                      error:&error];
//    NSLog(@"%@", [regex );
//    return @"rwrw";
//}

@end
