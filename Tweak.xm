@interface NCNotificationListSectionRevealHintView : UIView
@end

%hook NCNotificationListSectionRevealHintView

- (void)layoutSubviews {
	return;
}

%end

// %hook NCNotificationListSectionRevealHintView
//
//   -(void)viewDidAppear
//   {
//     %orig;
//     self.hidden = YES;
//   }
//
//   // -(id)revealHintTitle
//   // {
//   //   return nil;
//   // }
//   //
//   // -(id)revealHintChevron
//   // {
//   //   return nil;
//   // }
//   //
//   // -(void)setRevealHintChevron:(id)arg1
//   // {
//   //   %orig(nil);
//   // }
//   //
//   // -(void)setRevealHintTitle:(id)arg1
//   // {
//   //   %orig(nil);
//   // }
//
// %end
//
// %hook NCNotificationCombinedListViewController
//
//   -(void)setRevealHintView:(NCNotificationListSectionRevealHintView *)arg1
//   {
//     %orig(arg1);
//     arg1.hidden = YES;
//   }
//
//   -(NCNotificationListSectionRevealHintView *)revealHintView
//   {
//     NCNotificationListSectionRevealHintView * temp = %orig;
//     temp.hidden = YES;
//     return temp;
//   }
//
// %end
