# HolidayThemes

SwiftUI module library for adding seasons theme animations to your app.

## Requirements
- iOS 13.0+
- Xcode 12.0+

## Installation 
### Swift Package Manager
The Swift Package Manager is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

```sh
File -> Swift Packages -> Add Package Dependency, enter HolidayThemes repo's URL
```
[HolidayThemes URL](https://github.com/yhondri/HolidayThemes) - https://github.com/yhondri/HolidayThemes

## Included Themes
- Autum
- Spring
- Summer
- Winter

## Creating HolidayThemeView

1. Create a HolidayThemeView passing the frame that it will fill
```
GeometryReader { proxy in
    HolidayThemeView(frame: proxy.frame(in: .local))
}
```

You can customize the HolidayThemeView, for example passing a custom image or changing some of the values of the CAEmitterCell. 
To do this you need to pass an HolidayThemeData an fill the parameters that you want. 
2. Customizing the theme with an image 
```
GeometryReader { proxy in
    HolidayThemeView(frame: proxy.frame(in: .local), themeData: HolidayThemeData(particleImage: UIImage(named: "custom_image.png")!))
}
```
3. There are a lot of parameters that you can customize
- particle: Particle
- particleImage: UIImage?
- emitterPosition: CGPoint
- emitterSize: CGSize
- emitterMode: CAEmitterLayerEmitterMode
- renderMode: CAEmitterLayerRenderMode
- birthRate: Float
- lifetime: Float
- velocity: CGFloat
- velocityRange: CGFloat
- xAcceleration: CGFloat
- yAcceleration: CGFloat
- emissionRange: CGFloat
- spin: CGFloat
- spinRange: CGFloat
- scale: CGFloat
- scaleRange: CGFloat
- backgroundColor: UIColor

## License

MIT

**Free Software, Hell Yeah!**

## The particle images are from:
- [Autum](https://iconos8.es/icon/18510/oto%C3%B1o) 
- [Spring](https://iconos8.es/icon/40855/flor-de-balneario) 
- [Summer](https://iconos8.es/icon/18529/verano) 
