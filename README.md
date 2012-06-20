CocoaPods:
```ruby
platform    :ios

dependency  'A2DynamicDelegate', '2.0.1'
dependency  'BlocksKit',    '1.5.0'
```

```c
MKMapView *_mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];      // CRASH HERE
[_mapView setDelegate:self];
[self.view addSubview:_mapView];
[_mapView release];
```

crash at `A2DynamicDelegate.m` line 307
```
NSString *clusterName = [NSString stringWithFormat: @"A2Dynamic%@", NSStringFromProtocol(protocol)];
```

crashes only iOS 5+