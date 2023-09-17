# Repro steps


```
git clone https://github.com/jverkoey/LocalSwiftPackagesFailure.git
xcodebuild -resolvePackageDependencies -project LocalPackagesFailOnCloudBuild.xcodeproj -scheme LocalPackagesFailOnCloudBuild -disableAutomaticPackageResolution -onlyUsePackageVersionsFromResolvedFile
```

Output:

```
Command line invocation:
    /Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild -resolvePackageDependencies -project LocalPackagesFailOnCloudBuild.xcodeproj -scheme LocalPackagesFailOnCloudBuild -disableAutomaticPackageResolution -onlyUsePackageVersionsFromResolvedFile

User defaults from command line:
    IDEPackageOnlyUseVersionsFromResolvedFile = YES
    IDEPackageSupportUseBuiltinSCM = YES

Resolve Package Graph
a resolved file is required when automatic dependency resolution is disabled and should be placed at /Users/featherless/workbench/localpackages/LocalPackagesFailOnCloudBuild.xcodeproj/project.xcworkspace/xcshareddata/swiftpm/Package.resolved. Running resolver because the following dependencies were added: 'mypackage' (/Users/featherless/workbench/localpackages/MyPackage)fatalError
2023-09-17 14:59:49.019 xcodebuild[53898:2848855] Writing error result bundle to /var/folders/8g/h8fxkf_90mj2zxdf78r0tmbh0000gn/T/ResultBundle_2023-17-09_14-59-0049.xcresult
xcodebuild: error: Could not resolve package dependencies:
  a resolved file is required when automatic dependency resolution is disabled and should be placed at /Users/featherless/workbench/localpackages/LocalPackagesFailOnCloudBuild.xcodeproj/project.xcworkspace/xcshareddata/swiftpm/Package.resolved. Running resolver because the following dependencies were added: 'mypackage' (/Users/featherless/workbench/localpackages/MyPackage)
  fatalError
```

