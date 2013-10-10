//
//  Consumidor.m
//  IP2Coutry
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import "Consumidor.h"
#import "iptocountry.h"

@implementation Consumidor

-(NSString	*)webserviceCall:(NSString *) ipAddress {
	NSString *xml;
	iptocountrySoap *bind = [iptocountry iptocountrySoap];
	bind.logXMLInOut = YES;
	
	iptocountry_FindCountryAsString *parametros = [[iptocountry_FindCountryAsString new] autorelease];
	parametros.V4IPAddress = ipAddress;
	
	iptocountrySoapResponse *request = [bind FindCountryAsStringUsingParameters:parametros];
	NSArray *responseBodyParts = request.bodyParts;
	if ([responseBodyParts count] == 0) {
		NSLog(@"Ocurrio un error al leer Servicio Web");
		xml = nil;
	} else {
		for(id bodyPart in responseBodyParts) {
			if ([bodyPart isKindOfClass:[iptocountry_FindCountryAsStringResponse class]]) {
				iptocountry_FindCountryAsStringResponse *body = (iptocountry_FindCountryAsStringResponse *) bodyPart;
				xml = body.FindCountryAsStringResult;
			}
		}
	}
	
	return xml;
}
@end
