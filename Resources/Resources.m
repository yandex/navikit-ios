#import <Foundation/Foundation.h>

@interface YandexMapsMobileSwiftResources : NSObject
@end

@implementation YandexMapsMobileSwiftResources

+ (NSBundle *)mapkitResourcesBundle
{
    NSURL *contentsURL = [SWIFTPM_MODULE_BUNDLE.bundleURL
        URLByAppendingPathComponent:@"Contents.bundle"
                        isDirectory:YES];
    return contentsURL ? [NSBundle bundleWithURL:contentsURL] : nil;
}

@end
