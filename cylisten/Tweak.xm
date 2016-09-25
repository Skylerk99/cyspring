%hook Cydia
-(void) reloadSpringBoard
{
	CFNotificationCenterPostNotification (CFNotificationCenterGetDarwinNotifyCenter(),
										  CFSTR("respringDevice"),
										  NULL,
										  NULL,
										  false);
}
%end