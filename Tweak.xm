#import <SpringBoard/SpringBoard.h>

%config(generator=internal)

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

- (void)addIcon:(SBIcon *)icon
{
	if (![icon isKindOfClass:%c(SBNewsstandIcon)])
		%orig;
}

- (void)_addNewIconToDesignatedLocation:(SBIcon *)icon
{
	if (![icon isKindOfClass:%c(SBNewsstandIcon)])
		%orig;
}

- (NSIndexPath *)_indexPathForFirstFreeNewsstandSlot
{
	return nil;
}

%end

%hook SBDownloadingIcon

- (BOOL)iconAppearsInNewsstand
{
	return NO;
}

- (void)setNewsstandDownload:(BOOL)isNewsstandDownload
{
	%orig(NO);
}

%end

%hook SBIconController

- (BOOL)isNewsstandEnabled
{
	return NO;
}

%end
