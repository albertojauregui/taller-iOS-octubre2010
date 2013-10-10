//
//  Consumidor.m
//  IPCountry
//
//  Created by Rene Cruz Flores on 25/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import "Consumidor.h"
#import "NumberConversion.h"

@implementation Consumidor
- (NSString *)webserviceCall {
	NSString *xml;
	
	NumberConversionSoapBinding *bind = [NumberConversion NumberConversionSoapBinding];
	//iptocountrySoap *bind = [iptocountry iptocountrySoap];
	
	bind.logXMLInOut = YES;
	
	NumberConversion_NumberToWords *aParameters = [[NumberConversion_NumberToWords new] autorelease];
	//iptocountry_FindCountryAsString *aParameters = [[iptocountry_FindCountryAsString new] autorelease];
	
	aParameters.ubiNum = [NSNumber numberWithInt:123];
	//aParameters.V4IPAddress = @"201.150.132.220";

	NumberConversionSoapBindingResponse *request = [bind NumberToWordsUsingParameters:aParameters];
	
	//iptocountrySoapResponse *request = [bind FindCountryAsStringUsingParameters:aParameters];
	
	NSArray *responseBodyParts = request.bodyParts; 
	if ([responseBodyParts count] == 0)
	{
		UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"Error!" 
															 message:@"Error inesperado, intente mas tarde" 
															delegate:nil
												   cancelButtonTitle:@"Cerrar"  
												   otherButtonTitles:nil, nil];
		[alertView show];
		[alertView release];
		
		xml = nil;
	}
	else 
	{
		for(id bodyPart in responseBodyParts) 
		{
			if([bodyPart isKindOfClass:[NumberConversion_NumberToWordsResponse class]]) 
			{
				NumberConversion_NumberToWordsResponse *body = (NumberConversion_NumberToWordsResponse *) bodyPart;
				//iptocountry_FindCountryAsStringResponse *body = (iptocountry_FindCountryAsStringResponse *) bodyPart;

				xml = body.NumberToWordsResult;  //FindCountryAsStringResult;
			}
		}
	}
	
	return xml;
}
@end
