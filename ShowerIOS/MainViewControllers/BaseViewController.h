
#import <UIKit/UIKit.h>
#import "Utils.h"

@interface BaseViewController :UIViewController

@property (nonatomic, assign) BOOL showError;

- (NSString*) generateURL;


-(void) processSuccessNet:(AFHTTPRequestOperation*)operation error:(id)responseObject;

-(void) processErrorNet:(AFHTTPRequestOperation*)operation error:(NSError*)error;


@end