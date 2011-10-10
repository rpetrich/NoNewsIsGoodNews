#import <SpringBoard/SpringBoard.h>

%hook SBNewsstandApplication

- (BOOL)isNewsstandApplication
{
	return NO;
}

- (Class)iconClass
{
	return %c(SBUserInstalledApplicationIcon);
}

%end

%hook SBIconModel

- (SBIcon *)newsstandIcon
{
	return nil;
}

- (id)newsstandFolder
{
	return nil;
}

- (void)addNewsstandIcon
{
}

%end

%hook SBDownloadingIcon

- (BOOL)iconAppearsInNewsstand
{
	return NO;
}

%end

%hook SBNewsstandIcon

+ (id)allocWithZone:(NSZone *)zone
{
	return nil;
}

%end
