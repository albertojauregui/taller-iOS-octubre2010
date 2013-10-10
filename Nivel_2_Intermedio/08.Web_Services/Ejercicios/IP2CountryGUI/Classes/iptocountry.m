#import "iptocountry.h"
#import <libxml/xmlstring.h>
#if TARGET_OS_IPHONE
#import <CFNetwork/CFNetwork.h>
#endif
@implementation iptocountry_FindCountryAsString
- (id)init
{
	if((self = [super init])) {
		V4IPAddress = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(V4IPAddress != nil) [V4IPAddress release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"iptocountry";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	//xmlNodePtr root = xmlDocGetRootElement(doc);
	
	// xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [elName xmlString], NULL);
	// xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"iptocountry:FindCountryAsString");
//%IFEQ isInTargetNamespace false
	xmlSetNsProp(node, nil, (const xmlChar*)"xmlns", (const xmlChar*)"http://www.ecubicle.net/webservices/");
//%ENDIF
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.V4IPAddress != 0) {
		xmlAddChild(node, [self.V4IPAddress xmlNodeForDoc:node->doc elementName:@"V4IPAddress" elementNSPrefix:@"iptocountry"]);
	}
}
/* elements */
@synthesize V4IPAddress;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (iptocountry_FindCountryAsString *)deserializeNode:(xmlNodePtr)cur
{
	iptocountry_FindCountryAsString *newObject = [[iptocountry_FindCountryAsString new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "V4IPAddress")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.V4IPAddress = newChild;
			}
		}
	}
}
@end
@implementation iptocountry_FindCountryAsStringResponse
- (id)init
{
	if((self = [super init])) {
		FindCountryAsStringResult = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(FindCountryAsStringResult != nil) [FindCountryAsStringResult release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"iptocountry";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	//xmlNodePtr root = xmlDocGetRootElement(doc);
	
	// xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [elName xmlString], NULL);
	// xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"iptocountry:FindCountryAsStringResponse");
//%IFEQ isInTargetNamespace false
	xmlSetNsProp(node, nil, (const xmlChar*)"xmlns", (const xmlChar*)"http://www.ecubicle.net/webservices/");
//%ENDIF
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.FindCountryAsStringResult != 0) {
		xmlAddChild(node, [self.FindCountryAsStringResult xmlNodeForDoc:node->doc elementName:@"FindCountryAsStringResult" elementNSPrefix:@"iptocountry"]);
	}
}
/* elements */
@synthesize FindCountryAsStringResult;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (iptocountry_FindCountryAsStringResponse *)deserializeNode:(xmlNodePtr)cur
{
	iptocountry_FindCountryAsStringResponse *newObject = [[iptocountry_FindCountryAsStringResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "FindCountryAsStringResult")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.FindCountryAsStringResult = newChild;
			}
		}
	}
}
@end
@implementation iptocountry_FindCountryAsXml
- (id)init
{
	if((self = [super init])) {
		V4IPAddress = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(V4IPAddress != nil) [V4IPAddress release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"iptocountry";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	//xmlNodePtr root = xmlDocGetRootElement(doc);
	
	// xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [elName xmlString], NULL);
	// xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"iptocountry:FindCountryAsXml");
//%IFEQ isInTargetNamespace false
	xmlSetNsProp(node, nil, (const xmlChar*)"xmlns", (const xmlChar*)"http://www.ecubicle.net/webservices/");
//%ENDIF
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.V4IPAddress != 0) {
		xmlAddChild(node, [self.V4IPAddress xmlNodeForDoc:node->doc elementName:@"V4IPAddress" elementNSPrefix:@"iptocountry"]);
	}
}
/* elements */
@synthesize V4IPAddress;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (iptocountry_FindCountryAsXml *)deserializeNode:(xmlNodePtr)cur
{
	iptocountry_FindCountryAsXml *newObject = [[iptocountry_FindCountryAsXml new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "V4IPAddress")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.V4IPAddress = newChild;
			}
		}
	}
}
@end
@implementation iptocountry_FindCountryAsXmlResult
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"iptocountry";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	//xmlNodePtr root = xmlDocGetRootElement(doc);
	
	// xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [elName xmlString], NULL);
	// xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"iptocountry:FindCountryAsXmlResult");
//%IFEQ isInTargetNamespace false
	xmlSetNsProp(node, nil, (const xmlChar*)"xmlns", (const xmlChar*)"http://www.ecubicle.net/webservices/");
//%ENDIF
	
	[self addAttributesToNode:node];
	
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (iptocountry_FindCountryAsXmlResult *)deserializeNode:(xmlNodePtr)cur
{
	iptocountry_FindCountryAsXmlResult *newObject = [[iptocountry_FindCountryAsXmlResult new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
@end
@implementation iptocountry_FindCountryAsXmlResponse
- (id)init
{
	if((self = [super init])) {
		FindCountryAsXmlResult = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(FindCountryAsXmlResult != nil) [FindCountryAsXmlResult release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"iptocountry";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	//xmlNodePtr root = xmlDocGetRootElement(doc);
	
	// xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [elName xmlString], NULL);
	// xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"iptocountry:FindCountryAsXmlResponse");
//%IFEQ isInTargetNamespace false
	xmlSetNsProp(node, nil, (const xmlChar*)"xmlns", (const xmlChar*)"http://www.ecubicle.net/webservices/");
//%ENDIF
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.FindCountryAsXmlResult != 0) {
		xmlAddChild(node, [self.FindCountryAsXmlResult xmlNodeForDoc:node->doc elementName:@"FindCountryAsXmlResult" elementNSPrefix:@"iptocountry"]);
	}
}
/* elements */
@synthesize FindCountryAsXmlResult;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (iptocountry_FindCountryAsXmlResponse *)deserializeNode:(xmlNodePtr)cur
{
	iptocountry_FindCountryAsXmlResponse *newObject = [[iptocountry_FindCountryAsXmlResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "FindCountryAsXmlResult")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [iptocountry_FindCountryAsXmlResult class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.FindCountryAsXmlResult = newChild;
			}
		}
	}
}
@end
@implementation iptocountry
+ (void)initialize
{
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"xsd" forKey:@"http://www.w3.org/2001/XMLSchema"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"iptocountry" forKey:@"http://www.ecubicle.net/webservices/"];
}
+ (iptocountrySoap *)iptocountrySoap
{
	return [[[iptocountrySoap alloc] initWithAddress:@"http://www.ecubicle.net/iptocountry.asmx"] autorelease];
}
+ (iptocountrySoap12 *)iptocountrySoap12
{
	return [[[iptocountrySoap12 alloc] initWithAddress:@"http://www.ecubicle.net/iptocountry.asmx"] autorelease];
}
@end
@implementation iptocountrySoap
@synthesize address;
@synthesize defaultTimeout;
@synthesize logXMLInOut;
@synthesize cookies;
@synthesize authUsername;
@synthesize authPassword;
- (id)init
{
	if((self = [super init])) {
		address = nil;
		cookies = nil;
		defaultTimeout = 10;//seconds
		logXMLInOut = NO;
		synchronousOperationComplete = NO;
	}
	
	return self;
}
- (id)initWithAddress:(NSString *)anAddress
{
	if((self = [self init])) {
		self.address = [NSURL URLWithString:anAddress];
	}
	
	return self;
}
- (void)addCookie:(NSHTTPCookie *)toAdd
{
	if(toAdd != nil) {
		if(cookies == nil) cookies = [[NSMutableArray alloc] init];
		[cookies addObject:toAdd];
	}
}
- (iptocountrySoapResponse *)performSynchronousOperation:(iptocountrySoapOperation *)operation
{
	synchronousOperationComplete = NO;
	[operation start];
	
	// Now wait for response
	NSRunLoop *theRL = [NSRunLoop currentRunLoop];
	
	while (!synchronousOperationComplete && [theRL runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
	return operation.response;
}
- (void)performAsynchronousOperation:(iptocountrySoapOperation *)operation
{
	[operation start];
}
- (void) operation:(iptocountrySoapOperation *)operation completedWithResponse:(iptocountrySoapResponse *)response
{
	synchronousOperationComplete = YES;
}
- (iptocountrySoapResponse *)FindCountryAsStringUsingParameters:(iptocountry_FindCountryAsString *)aParameters 
{
	return [self performSynchronousOperation:[[(iptocountrySoap_FindCountryAsString*)[iptocountrySoap_FindCountryAsString alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)FindCountryAsStringAsyncUsingParameters:(iptocountry_FindCountryAsString *)aParameters  delegate:(id<iptocountrySoapResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(iptocountrySoap_FindCountryAsString*)[iptocountrySoap_FindCountryAsString alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (iptocountrySoapResponse *)FindCountryAsXmlUsingParameters:(iptocountry_FindCountryAsXml *)aParameters 
{
	return [self performSynchronousOperation:[[(iptocountrySoap_FindCountryAsXml*)[iptocountrySoap_FindCountryAsXml alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)FindCountryAsXmlAsyncUsingParameters:(iptocountry_FindCountryAsXml *)aParameters  delegate:(id<iptocountrySoapResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(iptocountrySoap_FindCountryAsXml*)[iptocountrySoap_FindCountryAsXml alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (void)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction forOperation:(iptocountrySoapOperation *)operation
{
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:self.address 
																												 cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
																										 timeoutInterval:self.defaultTimeout];
	NSData *bodyData = [outputBody dataUsingEncoding:NSUTF8StringEncoding];
	
	if(cookies != nil) {
		[request setAllHTTPHeaderFields:[NSHTTPCookie requestHeaderFieldsWithCookies:cookies]];
	}
	[request setValue:@"wsdl2objc" forHTTPHeaderField:@"User-Agent"];
	[request setValue:soapAction forHTTPHeaderField:@"SOAPAction"];
	[request setValue:@"application/soap+xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
	[request setValue:[NSString stringWithFormat:@"%u", [bodyData length]] forHTTPHeaderField:@"Content-Length"];
	[request setValue:self.address.host forHTTPHeaderField:@"Host"];
	[request setHTTPMethod: @"POST"];
	// set version 1.1 - how?
	[request setHTTPBody: bodyData];
		
	if(self.logXMLInOut) {
		NSLog(@"OutputHeaders:\n%@", [request allHTTPHeaderFields]);
		NSLog(@"OutputBody:\n%@", outputBody);
	}
	
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:operation];
	
	operation.urlConnection = connection;
	[connection release];
}
- (void) dealloc
{
	[address release];
	[cookies release];
	[super dealloc];
}
@end
@implementation iptocountrySoapOperation
@synthesize binding;
@synthesize response;
@synthesize delegate;
@synthesize responseData;
@synthesize urlConnection;
- (id)initWithBinding:(iptocountrySoap *)aBinding delegate:(id<iptocountrySoapResponseDelegate>)aDelegate
{
	if ((self = [super init])) {
		self.binding = aBinding;
		response = nil;
		self.delegate = aDelegate;
		self.responseData = nil;
		self.urlConnection = nil;
	}
	
	return self;
}
-(void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
	if ([challenge previousFailureCount] == 0) {
		NSURLCredential *newCredential;
		newCredential=[NSURLCredential credentialWithUser:self.binding.authUsername
												 password:self.binding.authPassword
											  persistence:NSURLCredentialPersistenceForSession];
		[[challenge sender] useCredential:newCredential
			   forAuthenticationChallenge:challenge];
	} else {
		[[challenge sender] cancelAuthenticationChallenge:challenge];
		NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Authentication Error" forKey:NSLocalizedDescriptionKey];
		NSError *authError = [NSError errorWithDomain:@"Connection Authentication" code:0 userInfo:userInfo];
		[self connection:connection didFailWithError:authError];
	}
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)urlResponse
{
	NSHTTPURLResponse *httpResponse;
	if ([urlResponse isKindOfClass:[NSHTTPURLResponse class]]) {
		httpResponse = (NSHTTPURLResponse *) urlResponse;
	} else {
		httpResponse = nil;
	}
	
	if(binding.logXMLInOut) {
		NSLog(@"ResponseStatus: %u\n", [httpResponse statusCode]);
		NSLog(@"ResponseHeaders:\n%@", [httpResponse allHeaderFields]);
	}
	
	NSMutableArray *cookies = [[NSHTTPCookie cookiesWithResponseHeaderFields:[httpResponse allHeaderFields] forURL:binding.address] mutableCopy];
	
	binding.cookies = cookies;
	[cookies release];
  if ([urlResponse.MIMEType rangeOfString:@"application/soap+xml"].length == 0) {
		NSError *error = nil;
		[connection cancel];
		if ([httpResponse statusCode] >= 400) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:[NSHTTPURLResponse localizedStringForStatusCode:[httpResponse statusCode]] forKey:NSLocalizedDescriptionKey];
				
			error = [NSError errorWithDomain:@"iptocountrySoapResponseHTTP" code:[httpResponse statusCode] userInfo:userInfo];
		} else {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:
																[NSString stringWithFormat: @"Unexpected response MIME type to SOAP call:%@", urlResponse.MIMEType]
																													 forKey:NSLocalizedDescriptionKey];
			error = [NSError errorWithDomain:@"iptocountrySoapResponseHTTP" code:1 userInfo:userInfo];
		}
				
		[self connection:connection didFailWithError:error];
  }
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
  if (responseData == nil) {
		responseData = [data mutableCopy];
	} else {
		[responseData appendData:data];
	}
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	if (binding.logXMLInOut) {
		NSLog(@"ResponseError:\n%@", error);
	}
	response.error = error;
	[delegate operation:self completedWithResponse:response];
}
- (void)dealloc
{
	[binding release];
	[response release];
	delegate = nil;
	[responseData release];
	[urlConnection release];
	
	[super dealloc];
}
@end
@implementation iptocountrySoap_FindCountryAsString
@synthesize parameters;
- (id)initWithBinding:(iptocountrySoap *)aBinding delegate:(id<iptocountrySoapResponseDelegate>)responseDelegate
parameters:(iptocountry_FindCountryAsString *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [iptocountrySoapResponse new];
	
	iptocountrySoap_envelope *envelope = [iptocountrySoap_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(parameters != nil) [bodyElements setObject:parameters forKey:@"FindCountryAsString"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://www.ecubicle.net/webservices/FindCountryAsString" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"iptocountrySoapResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "FindCountryAsStringResponse")) {
									iptocountry_FindCountryAsStringResponse *bodyObject = [iptocountry_FindCountryAsStringResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix) && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation iptocountrySoap_FindCountryAsXml
@synthesize parameters;
- (id)initWithBinding:(iptocountrySoap *)aBinding delegate:(id<iptocountrySoapResponseDelegate>)responseDelegate
parameters:(iptocountry_FindCountryAsXml *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [iptocountrySoapResponse new];
	
	iptocountrySoap_envelope *envelope = [iptocountrySoap_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(parameters != nil) [bodyElements setObject:parameters forKey:@"FindCountryAsXml"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://www.ecubicle.net/webservices/FindCountryAsXml" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"iptocountrySoapResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "FindCountryAsXmlResponse")) {
									iptocountry_FindCountryAsXmlResponse *bodyObject = [iptocountry_FindCountryAsXmlResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix) && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
static iptocountrySoap_envelope *iptocountrySoapSharedEnvelopeInstance = nil;
@implementation iptocountrySoap_envelope
+ (iptocountrySoap_envelope *)sharedInstance
{
	if(iptocountrySoapSharedEnvelopeInstance == nil) {
		iptocountrySoapSharedEnvelopeInstance = [iptocountrySoap_envelope new];
	}
	
	return iptocountrySoapSharedEnvelopeInstance;
}
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements
{
    xmlDocPtr doc;
	
	doc = xmlNewDoc((const xmlChar*)XML_DEFAULT_VERSION);
	if (doc == NULL) {
		NSLog(@"Error creating the xml document tree");
		return @"";
	}
	
	xmlNodePtr root = xmlNewDocNode(doc, NULL, (const xmlChar*)"Envelope", NULL);
	xmlDocSetRootElement(doc, root);
	
	xmlNsPtr soapEnvelopeNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2003/05/soap-envelope", (const xmlChar*)"soap");
	xmlSetNs(root, soapEnvelopeNs);
	
	xmlNsPtr xslNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/1999/XSL/Transform", (const xmlChar*)"xsl");
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema-instance", (const xmlChar*)"xsi");
	
	xmlNewNsProp(root, xslNs, (const xmlChar*)"version", (const xmlChar*)"1.0");
	
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema", (const xmlChar*)"xsd");
	xmlNewNs(root, (const xmlChar*)"http://www.ecubicle.net/webservices/", (const xmlChar*)"iptocountry");
	
	if((headerElements != nil) && ([headerElements count] > 0)) {
		xmlNodePtr headerNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Header", NULL);
		xmlAddChild(root, headerNode);
		
		for(NSString *key in [headerElements allKeys]) {
			id header = [headerElements objectForKey:key];
			xmlAddChild(headerNode, [header xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	if((bodyElements != nil) && ([bodyElements count] > 0)) {
		xmlNodePtr bodyNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Body", NULL);
		xmlAddChild(root, bodyNode);
		
		for(NSString *key in [bodyElements allKeys]) {
			id body = [bodyElements objectForKey:key];
			xmlAddChild(bodyNode, [body xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	xmlChar *buf;
	int size;
	xmlDocDumpFormatMemory(doc, &buf, &size, 1);
	
	NSString *serializedForm = [NSString stringWithCString:(const char*)buf encoding:NSUTF8StringEncoding];
	xmlFree(buf);
	
	xmlFreeDoc(doc);	
	return serializedForm;
}
@end
@implementation iptocountrySoapResponse
@synthesize headers;
@synthesize bodyParts;
@synthesize error;
- (id)init
{
	if((self = [super init])) {
		headers = nil;
		bodyParts = nil;
		error = nil;
	}
	
	return self;
}
-(void)dealloc {
    self.headers = nil;
    self.bodyParts = nil;
    self.error = nil;	
    [super dealloc];
}
@end
@implementation iptocountrySoap12
@synthesize address;
@synthesize defaultTimeout;
@synthesize logXMLInOut;
@synthesize cookies;
@synthesize authUsername;
@synthesize authPassword;
- (id)init
{
	if((self = [super init])) {
		address = nil;
		cookies = nil;
		defaultTimeout = 10;//seconds
		logXMLInOut = NO;
		synchronousOperationComplete = NO;
	}
	
	return self;
}
- (id)initWithAddress:(NSString *)anAddress
{
	if((self = [self init])) {
		self.address = [NSURL URLWithString:anAddress];
	}
	
	return self;
}
- (void)addCookie:(NSHTTPCookie *)toAdd
{
	if(toAdd != nil) {
		if(cookies == nil) cookies = [[NSMutableArray alloc] init];
		[cookies addObject:toAdd];
	}
}
- (iptocountrySoap12Response *)performSynchronousOperation:(iptocountrySoap12Operation *)operation
{
	synchronousOperationComplete = NO;
	[operation start];
	
	// Now wait for response
	NSRunLoop *theRL = [NSRunLoop currentRunLoop];
	
	while (!synchronousOperationComplete && [theRL runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
	return operation.response;
}
- (void)performAsynchronousOperation:(iptocountrySoap12Operation *)operation
{
	[operation start];
}
- (void) operation:(iptocountrySoap12Operation *)operation completedWithResponse:(iptocountrySoap12Response *)response
{
	synchronousOperationComplete = YES;
}
- (iptocountrySoap12Response *)FindCountryAsStringUsingParameters:(iptocountry_FindCountryAsString *)aParameters 
{
	return [self performSynchronousOperation:[[(iptocountrySoap12_FindCountryAsString*)[iptocountrySoap12_FindCountryAsString alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)FindCountryAsStringAsyncUsingParameters:(iptocountry_FindCountryAsString *)aParameters  delegate:(id<iptocountrySoap12ResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(iptocountrySoap12_FindCountryAsString*)[iptocountrySoap12_FindCountryAsString alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (iptocountrySoap12Response *)FindCountryAsXmlUsingParameters:(iptocountry_FindCountryAsXml *)aParameters 
{
	return [self performSynchronousOperation:[[(iptocountrySoap12_FindCountryAsXml*)[iptocountrySoap12_FindCountryAsXml alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)FindCountryAsXmlAsyncUsingParameters:(iptocountry_FindCountryAsXml *)aParameters  delegate:(id<iptocountrySoap12ResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(iptocountrySoap12_FindCountryAsXml*)[iptocountrySoap12_FindCountryAsXml alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (void)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction forOperation:(iptocountrySoap12Operation *)operation
{
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:self.address 
																												 cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
																										 timeoutInterval:self.defaultTimeout];
	NSData *bodyData = [outputBody dataUsingEncoding:NSUTF8StringEncoding];
	
	if(cookies != nil) {
		[request setAllHTTPHeaderFields:[NSHTTPCookie requestHeaderFieldsWithCookies:cookies]];
	}
	[request setValue:@"wsdl2objc" forHTTPHeaderField:@"User-Agent"];
	[request setValue:soapAction forHTTPHeaderField:@"SOAPAction"];
	[request setValue:@"application/soap+xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
	[request setValue:[NSString stringWithFormat:@"%u", [bodyData length]] forHTTPHeaderField:@"Content-Length"];
	[request setValue:self.address.host forHTTPHeaderField:@"Host"];
	[request setHTTPMethod: @"POST"];
	// set version 1.1 - how?
	[request setHTTPBody: bodyData];
		
	if(self.logXMLInOut) {
		NSLog(@"OutputHeaders:\n%@", [request allHTTPHeaderFields]);
		NSLog(@"OutputBody:\n%@", outputBody);
	}
	
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:operation];
	
	operation.urlConnection = connection;
	[connection release];
}
- (void) dealloc
{
	[address release];
	[cookies release];
	[super dealloc];
}
@end
@implementation iptocountrySoap12Operation
@synthesize binding;
@synthesize response;
@synthesize delegate;
@synthesize responseData;
@synthesize urlConnection;
- (id)initWithBinding:(iptocountrySoap12 *)aBinding delegate:(id<iptocountrySoap12ResponseDelegate>)aDelegate
{
	if ((self = [super init])) {
		self.binding = aBinding;
		response = nil;
		self.delegate = aDelegate;
		self.responseData = nil;
		self.urlConnection = nil;
	}
	
	return self;
}
-(void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
	if ([challenge previousFailureCount] == 0) {
		NSURLCredential *newCredential;
		newCredential=[NSURLCredential credentialWithUser:self.binding.authUsername
												 password:self.binding.authPassword
											  persistence:NSURLCredentialPersistenceForSession];
		[[challenge sender] useCredential:newCredential
			   forAuthenticationChallenge:challenge];
	} else {
		[[challenge sender] cancelAuthenticationChallenge:challenge];
		NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Authentication Error" forKey:NSLocalizedDescriptionKey];
		NSError *authError = [NSError errorWithDomain:@"Connection Authentication" code:0 userInfo:userInfo];
		[self connection:connection didFailWithError:authError];
	}
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)urlResponse
{
	NSHTTPURLResponse *httpResponse;
	if ([urlResponse isKindOfClass:[NSHTTPURLResponse class]]) {
		httpResponse = (NSHTTPURLResponse *) urlResponse;
	} else {
		httpResponse = nil;
	}
	
	if(binding.logXMLInOut) {
		NSLog(@"ResponseStatus: %u\n", [httpResponse statusCode]);
		NSLog(@"ResponseHeaders:\n%@", [httpResponse allHeaderFields]);
	}
	
	NSMutableArray *cookies = [[NSHTTPCookie cookiesWithResponseHeaderFields:[httpResponse allHeaderFields] forURL:binding.address] mutableCopy];
	
	binding.cookies = cookies;
	[cookies release];
  if ([urlResponse.MIMEType rangeOfString:@"application/soap+xml"].length == 0) {
		NSError *error = nil;
		[connection cancel];
		if ([httpResponse statusCode] >= 400) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:[NSHTTPURLResponse localizedStringForStatusCode:[httpResponse statusCode]] forKey:NSLocalizedDescriptionKey];
				
			error = [NSError errorWithDomain:@"iptocountrySoap12ResponseHTTP" code:[httpResponse statusCode] userInfo:userInfo];
		} else {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:
																[NSString stringWithFormat: @"Unexpected response MIME type to SOAP call:%@", urlResponse.MIMEType]
																													 forKey:NSLocalizedDescriptionKey];
			error = [NSError errorWithDomain:@"iptocountrySoap12ResponseHTTP" code:1 userInfo:userInfo];
		}
				
		[self connection:connection didFailWithError:error];
  }
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
  if (responseData == nil) {
		responseData = [data mutableCopy];
	} else {
		[responseData appendData:data];
	}
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	if (binding.logXMLInOut) {
		NSLog(@"ResponseError:\n%@", error);
	}
	response.error = error;
	[delegate operation:self completedWithResponse:response];
}
- (void)dealloc
{
	[binding release];
	[response release];
	delegate = nil;
	[responseData release];
	[urlConnection release];
	
	[super dealloc];
}
@end
@implementation iptocountrySoap12_FindCountryAsString
@synthesize parameters;
- (id)initWithBinding:(iptocountrySoap12 *)aBinding delegate:(id<iptocountrySoap12ResponseDelegate>)responseDelegate
parameters:(iptocountry_FindCountryAsString *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [iptocountrySoap12Response new];
	
	iptocountrySoap12_envelope *envelope = [iptocountrySoap12_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(parameters != nil) [bodyElements setObject:parameters forKey:@"FindCountryAsString"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://www.ecubicle.net/webservices/FindCountryAsString" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"iptocountrySoap12ResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "FindCountryAsStringResponse")) {
									iptocountry_FindCountryAsStringResponse *bodyObject = [iptocountry_FindCountryAsStringResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix) && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation iptocountrySoap12_FindCountryAsXml
@synthesize parameters;
- (id)initWithBinding:(iptocountrySoap12 *)aBinding delegate:(id<iptocountrySoap12ResponseDelegate>)responseDelegate
parameters:(iptocountry_FindCountryAsXml *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [iptocountrySoap12Response new];
	
	iptocountrySoap12_envelope *envelope = [iptocountrySoap12_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(parameters != nil) [bodyElements setObject:parameters forKey:@"FindCountryAsXml"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://www.ecubicle.net/webservices/FindCountryAsXml" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"iptocountrySoap12ResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "FindCountryAsXmlResponse")) {
									iptocountry_FindCountryAsXmlResponse *bodyObject = [iptocountry_FindCountryAsXmlResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix) && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
static iptocountrySoap12_envelope *iptocountrySoap12SharedEnvelopeInstance = nil;
@implementation iptocountrySoap12_envelope
+ (iptocountrySoap12_envelope *)sharedInstance
{
	if(iptocountrySoap12SharedEnvelopeInstance == nil) {
		iptocountrySoap12SharedEnvelopeInstance = [iptocountrySoap12_envelope new];
	}
	
	return iptocountrySoap12SharedEnvelopeInstance;
}
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements
{
    xmlDocPtr doc;
	
	doc = xmlNewDoc((const xmlChar*)XML_DEFAULT_VERSION);
	if (doc == NULL) {
		NSLog(@"Error creating the xml document tree");
		return @"";
	}
	
	xmlNodePtr root = xmlNewDocNode(doc, NULL, (const xmlChar*)"Envelope", NULL);
	xmlDocSetRootElement(doc, root);
	
	xmlNsPtr soapEnvelopeNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2003/05/soap-envelope", (const xmlChar*)"soap");
	xmlSetNs(root, soapEnvelopeNs);
	
	xmlNsPtr xslNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/1999/XSL/Transform", (const xmlChar*)"xsl");
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema-instance", (const xmlChar*)"xsi");
	
	xmlNewNsProp(root, xslNs, (const xmlChar*)"version", (const xmlChar*)"1.0");
	
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema", (const xmlChar*)"xsd");
	xmlNewNs(root, (const xmlChar*)"http://www.ecubicle.net/webservices/", (const xmlChar*)"iptocountry");
	
	if((headerElements != nil) && ([headerElements count] > 0)) {
		xmlNodePtr headerNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Header", NULL);
		xmlAddChild(root, headerNode);
		
		for(NSString *key in [headerElements allKeys]) {
			id header = [headerElements objectForKey:key];
			xmlAddChild(headerNode, [header xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	if((bodyElements != nil) && ([bodyElements count] > 0)) {
		xmlNodePtr bodyNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Body", NULL);
		xmlAddChild(root, bodyNode);
		
		for(NSString *key in [bodyElements allKeys]) {
			id body = [bodyElements objectForKey:key];
			xmlAddChild(bodyNode, [body xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	xmlChar *buf;
	int size;
	xmlDocDumpFormatMemory(doc, &buf, &size, 1);
	
	NSString *serializedForm = [NSString stringWithCString:(const char*)buf encoding:NSUTF8StringEncoding];
	xmlFree(buf);
	
	xmlFreeDoc(doc);	
	return serializedForm;
}
@end
@implementation iptocountrySoap12Response
@synthesize headers;
@synthesize bodyParts;
@synthesize error;
- (id)init
{
	if((self = [super init])) {
		headers = nil;
		bodyParts = nil;
		error = nil;
	}
	
	return self;
}
-(void)dealloc {
    self.headers = nil;
    self.bodyParts = nil;
    self.error = nil;	
    [super dealloc];
}
@end
