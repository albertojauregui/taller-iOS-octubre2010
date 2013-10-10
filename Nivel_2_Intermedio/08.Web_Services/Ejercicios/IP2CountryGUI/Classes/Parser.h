//
//  Parser.h
//  Sample
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Parser : NSObject {
	NSMutableString *currentElementValue;
	NSString *pais;
}
- (NSString *)parseXMLTOSring:(NSString *)xmlString;
@end
