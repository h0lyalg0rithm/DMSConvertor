//
//  DMSConverterTests.m
//  DMSConverterTests
//
//  Created by Suraj Shirvankar on 10/01/2014.
//  Copyright (c) 2014 Suraj Shirvankar. All rights reserved.
//
#import <DMSConverter.h>
SpecBegin(InitialSpecs)


describe(@"DMConveter", ^{
    
    it(@"converts lat&long to DMS",^{
        CLLocationCoordinate2D location =  CLLocationCoordinate2DMake(10,10);
        expect([DMSConverter LatitudeAndLongitudeToDMS:location]).to.equal(@"10°0'0\"N 10°0'0\"E");
    });
    it(@"converts cribb lat/long in DMS",^{
        CLLocationCoordinate2D location =  CLLocationCoordinate2DMake(25.145425, 55.224910);
        expect([DMSConverter LatitudeAndLongitudeToDMS:location]).to.equal(@"25°8'43\"N 55°13'29\"E");
    });
    
//    it(@"converts lat&long with formatting",^{
//        CLLocationCoordinate2D location =  CLLocationCoordinate2DMake(25.145425, 55.224910);
//        expect([DMSConverter LatitudeAndLongitudeToDMSWithFormat:location withFormat:@"d m s"]).to.equal(@"131232");
//    });
//    
//    pending(@"converts DMS to Lat/Long",^{
//    });
//    
//    pending(@"converts DMS to Lat/Long", ^{
//        
//    });
//    
//    
//    
//    pending(@"converts lat&long with formatting",^{
//        
//    });

    
});

SpecEnd
