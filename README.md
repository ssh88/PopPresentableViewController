# PopPresentableViewController

As UIPopoverController is now depricated (iOS 8+), this is a simple swift extension to allow a View Controller to present a child view controller as a PopoverPresentationController.

The API has been named in the similar fashion of the standard present view controller function :  ```present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (@escaping () -> Swift.Void)? = nil)``` 

### Usage

On the parent view controller simplly call 

```
self.presentViewControllerAsPopover(childViewController,
                                            permittedArrowDirections: .any,
                                            sourceView: view,
                                            sourceRect: rect,
                                            delegate: self,
                                            animated: true,
                                            completion: nil)
```

passing in the view controller to present. As expected, also works with Objective-C: 

```
[self presentViewControllerAsPopover:viewControllerToPresent
                permittedArrowDirections:UIPopoverArrowDirectionLeft | UIPopoverArrowDirectionRight
                              sourceView:view
                              sourceRect:rect
                                delegate:self
                                animated:YES
                              completion:nil];
```

So can be used to migrate your depricated warnings in a mixed project :)

### Requirements

- iOS 8.0+
- Swift 3
- Xcode 8

### Integration

#### CocoaPods

Will be a pod soon :)
