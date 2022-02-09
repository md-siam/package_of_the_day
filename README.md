# Package of the Day

<img align="right" src="assets/logo.png" height="200"></img>
Introduction to flutter packages: This repo will teach you some of the popular packages that are available in [pub.dev](https://pub.dev), & how to use them for fast application development.<br>
Playlist URLs: <br>
[YouTube](https://www.youtube.com/watch?v=GEMoJxqpzhs&list=PLlvRDpXh1Se6mtlWw6pE9MXZ2o4k_KULp) <br>
[YouTube: provider](https://www.youtube.com/watch?v=L_QMsE2v6dw)<br>
[YouTube: image_picker](https://www.youtube.com/watch?v=MSv38jO4EJk)
[YouTube: shimmer](https://www.youtube.com/watch?v=yhABSANrsNc)

## Packages List:

1. [Avatar Glow](/lib/1_avatar_glow/avatarglow.dart) > StatelessWidget
2. [Google Fonts](/lib/2_google_fonts/googlefonts.dart)
3. [Liquid pull to Refresh](/lib/3_liquid_pull_to_refresh/pull_to_refresh.dart) > StatelessWidget > LiquidPullToRefresh > ListView
4. [Percent Indicator](/lib/4_percent_indicator/percent_indicator.dart)
5. [Carousel Slider](/lib/5_carousel_slider/carousel_slider.dart) > slideTransform: const CubeTransform() > CircularSlideIndicator
6. [Smooth Page Indicator](/lib/6_smooth_page_indicator/smooth_page_indicator.dart) > SmoothPageIndicator > (controller: \_controller,count: 4) > JumpingDotEffect
7. [Font Awesome Flutter](/lib/7_font_awesome_flutter/font_awesome_flutter.dart) > FaIcon > FontAwesomeIcons.arrowUp
8. [Animations](/lib/8_animations/animations.dart) > Container transform
9. [Neon](/lib/9_neon/neon.dart) > text > color > fontSize > font: NeonFont.Cyberpunk > flickeringText: true
10. [Aurora](/lib/10_aurora_gradient/aurora.dart) > backgroundColor: Colors.black > Aurora > size > color list
11. [Flutter Swiper](/lib/11_flutter_swiper/flutter_swiper.dart) > itemCount > autoplay: true > autoplayDelay > Card <br>
    Require a model.dart > BannerImageModel >
12. [Flutter Blurhash](/lib/12_flutter_blurhash/flutter_blurhash.dart) > BlurHash > hash (String) > image (from network)
13. [Flutter SVG](/lib/13_flutter_SVG/flutter_svg.dart) > Container > SvgPicture.asset() or SvgPicture.network()
14. [Flutter Custom Clipper](/lib/14_flutter_custom_clippers/flutter_custom_clippers.dart) >
15. [Flutter TTS](/lib/15_flutter_tts/flutter_tts.dart) > StatefulWidget
16. [Flutter Highlight](/lib/16_flutter_highlight/flutter_highlight.dart)
17. [Syncfusion Charts](/lib/17_syncfusion_flutter_charts/syncfusion_flutter_charts.dart)
18. [Rflutter Alert](/lib/18_rflutter_alert/rflutter_alert.dart) > ElevatedButton > child > Alert > (context, title, desc).show()
19. [Settings UI](/lib/19_flutter_settings_ui/flutter_settings_ui.dart) > SettingsList > sections:[] > SettingsSection > SettingsTile
20. [Flutter Spinkit](/lib/20_flutter_spinkit/flutter_spinkit.dart) > SpinKitRotatingCircle(color: Colors.redAccent)
21. [Audioplayers](/lib/21_audioplayers/audioplayers.dart) > AudioCache audioCache > late AudioPlayer player > void playAudio() > void stopAudio()
22. [Go Router](/lib/22_go_router/go_router.dart) > MaterialApp.router > routeInformationParser: \_router.routeInformationParser > routerDelegate: \_router.routerDelegate
23. [HTTP](/lib/23_http/http.dart) > watch this [YouTube](https://www.youtube.com/watch?v=ZEnWA8c3e_4) video
24. [Onboarding](/lib/24_onboarding/onboarding.dart) > onboardingPagesList > PageModel > widget > Column > Container >
25. [Flutter Neumorphic](/lib/25_flutter_neumorphic/flutter_neumorphic.dart) > [Github](https://github.com/Idean/Flutter-Neumorphic/blob/master/example/lib/samples/widgets_sample.dart)
26. [Math Expressions](/lib/26_math_expressions/math_expressions.dart) > Input type is string
27. [Clay Containers](/lib/27_clay_containers/clay_containers.dart) > ClayContainer > color > height >width
28. [Day Night Switcher](/lib/28_day_night_switcher/day_night_switcher.dart) > DayNightSwitcher / DayNightSwitcherIcon > dayBackgroundColor > isDarkModeEnabled > onStateChanged
29. [Provider](/lib/29_provider/my_provider.dart) > MultiProvider > ChangeNotifierProvider > create: (\_) => Counter() > child: MyHomePage() <br>
    class Counter with ChangeNotifier > notifyListeners();
30. [Feather Icons](/lib/30_feather_icons/feather_icons.dart) > Icon(FeatherIcons.aperture)
31. [Flutter Swipable](/lib/31_flutter_swipable/flutter_swipable.dart) > Swipable > child: Container()
32. [Image Picker](/lib/32_image_picker/image_picker.dart) > watch the video, or read the [documentation](https://pub.dev/packages/image_picker) for iOS support.
33. [Convex Bottom Bar](/lib/33_convex_bottom_bar/convex_bottom_bar.dart) > read the code
34. [Intro Slider](/lib/34_intro_slider/intro_slider.dart) > read the code
35. [Parallax Animation](/lib/35_parallax_animation/parallax_animation.dart) > ParallaxWidget > child: > background: > Image.asset
36. [Flutter Staggered Grid View](/lib/36_flutter_staggered_grid_view/flutter_staggered_grid_view.dart) > GridView.custom > gridDelegate > pattern
37. [Shimmer](/lib/37_shimmer/shimmer.dart) > watch this [video](https://www.youtube.com/watch?v=yhABSANrsNc)
38. [Lottie](/lib/38_lottie/lottie.dart) > make an animation controller for controlling the state of the animation

## Table of Contents:

<table align="center" style="margin: 0px auto;">
  <tr>
    <th>No.</th>
    <th>Name of the Package</th>
    <th>Package URL</th>
    <th>Screenshots</th>
  </tr>
  <tr>
    <td>1</td>
    <td><a href="/lib/1_avatar_glow/avatarglow.dart">Avatar Glow</a></td>
    <td><a href="https://pub.dev/packages/avatar_glow" target="_blank">avatar_glow: ^2.0.2</a></td>
    <td><img align="right" src="screenshots/1_avatar_glow.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>2</td>
    <td><a href="/lib/2_google_fonts/googlefonts.dart">Google Fonts</a></td>
    <td><a href="https://pub.dev/packages/google_fonts" target="_blank">google_fonts: ^2.1.0</a></td>
    <td><img align="right" src="screenshots/2_google_fonts.png" height="350"></img></td>
  </tr>
  <tr>
    <td>3</td>
    <td><a href="/lib/3_liquid_pull_to_refresh/pull_to_refresh.dart">Liquid Pull To Refresh</a></td>
    <td><a href="https://pub.dev/packages/liquid_pull_to_refresh" target="_blank">liquid_pull_to_refresh: ^3.0.0</a></td>
    <td><img align="right" src="screenshots/3_liquid_pull_to_refresh.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>4</td>
    <td><a href="/lib/4_percent_indicator/percent_indicator.dart">Percent Indicator</a></td>
    <td><a href="https://pub.dev/packages/percent_indicator" target="_blank">percent_indicator: ^3.4.0</a></td>
    <td><img align="right" src="screenshots/4_percent_indicator.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>5</td>
    <td><a href="/lib/5_carousel_slider/carousel_slider.dart">Carousel Slider</a></td>
    <td><a href="https://pub.dev/packages/flutter_carousel_slider" target="_blank">flutter_carousel_slider: ^1.0.8</a></td>
    <td><img align="right" src="screenshots/5_carousel_slider.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>6</td>
    <td><a href="/lib/6_smooth_page_indicator/smooth_page_indicator.dart">Smooth Page Indicator</a></td>
    <td><a href="https://pub.dev/packages/smooth_page_indicator" target="_blank">smooth_page_indicator: ^1.0.0+2</a></td>
    <td><img align="right" src="screenshots/6_smooth_page_indicator.gif" height="350"></img></td>
  </tr>
    <tr>
    <td>7</td>
    <td><a href="/lib/7_font_awesome_flutter/font_awesome_flutter.dart">Font Awesome Flutter</a></td>
    <td><a href="https://pub.dev/packages/font_awesome_flutter" target="_blank">font_awesome_flutter: ^9.2.0</a></td>
    <td><img align="right" src="screenshots/7_font_awesome_flutter.png" height="350"></img></td>
  </tr>
  <tr>
    <td>8</td>
    <td><a href="/lib/8_animations/animations.dart">Animations</a></td>
    <td><a href="https://pub.dev/packages/animations" target="_blank">animations: ^2.0.2</a></td>
    <td><img align="right" src="screenshots/8_animations.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>9</td>
    <td><a href="/lib/9_neon/neon.dart">Neon</a></td>
    <td><a href="https://pub.dev/packages/neon" target="_blank">neon: ^0.1.0</a></td>
    <td><img align="right" src="screenshots/9_neon.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>10</td>
    <td><a href="/lib/10_aurora_gradient/aurora.dart">Aurora</a></td>
    <td><a href="https://pub.dev/packages/aurora" target="_blank">aurora: ^1.0.0</a></td>
    <td><img align="right" src="screenshots/10_aurora.png" height="350"></img></td>
  </tr>
  <tr>
    <td>11</td>
    <td><a href="/lib/11_flutter_swiper/flutter_swiper.dart">Flutter Swiper</a></td>
    <td><a href="https://pub.dev/packages/flutter_swiper_null_safety/example" target="_blank">flutter_swiper_null_safety: ^1.0.2</a></td>
    <td><img align="right" src="screenshots/11_flutter_swiper.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>12</td>
    <td><a href="/lib/12_flutter_blurhash/flutter_blurhash.dart">Flutter BlurHash</a></td>
    <td><a href="https://pub.dev/packages/flutter_blurhash" target="_blank">flutter_blurhash: ^0.6.0</a></td>
    <td><img align="right" src="screenshots/12_flutter_blurhash.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>13</td>
    <td><a href="/lib/13_flutter_SVG/flutter_svg.dart">Flutter SVG</a></td>
    <td><a href="https://pub.dev/packages/flutter_svg" target="_blank">flutter_svg: ^1.0.0</a></td>
    <td><img align="right" src="screenshots/13_flutter_svg.png" height="350"></img></td>
  </tr>
  <tr>
    <td>14</td>
    <td><a href="/lib/14_flutter_custom_clippers/flutter_custom_clippers.dart">Flutter Custom Clipper</a></td>
    <td><a href="https://pub.dev/packages/flutter_custom_clippers" target="_blank">flutter_custom_clippers: ^2.0.0</a></td>
    <td><img align="right" src="screenshots/14_flutter_custom_clippers.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>15</td>
    <td><a href="/lib/15_flutter_tts/flutter_tts.dart">Flutter TTS</a></td>
    <td><a href="https://pub.dev/packages/flutter_tts" target="_blank">flutter_tts: ^3.3.3</a></td>
    <td><img align="right" src="screenshots/15_flutter_tts.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>16</td>
    <td><a href="/lib/16_flutter_highlight/flutter_highlight.dart">Flutter Highlight</a></td>
    <td><a href="https://pub.dev/packages/flutter_highlight" target="_blank">flutter_highlight: ^0.7.0</a></td>
    <td><img align="right" src="screenshots/16_flutter_highlight.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>17</td>
    <td><a href="/lib/17_syncfusion_flutter_charts/syncfusion_flutter_charts.dart">Syncfusion Charts</a></td>
    <td><a href="https://pub.dev/packages/syncfusion_flutter_charts" target="_blank">syncfusion_flutter_charts: ^19.4.42</a></td>
    <td><img align="right" src="screenshots/17_syncfusion_flutter_charts.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>18</td>
    <td><a href="/lib/18_rflutter_alert/rflutter_alert.dart">Rflutter Alert</a></td>
    <td><a href="https://pub.dev/packages/rflutter_alert" target="_blank">rflutter_alert: ^2.0.4</a></td>
    <td><img align="right" src="screenshots/18_rflutter_alert.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>19</td>
    <td><a href="/lib/19_flutter_settings_ui/flutter_settings_ui.dart">Settings UI</a></td>
    <td><a href="https://pub.dev/packages/flutter_settings_ui" target="_blank">flutter_settings_ui: ^2.0.1</a></td>
    <td><img align="right" src="screenshots/19_flutter_settings_ui.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>20</td>
    <td><a href="/lib/20_flutter_spinkit/flutter_spinkit.dart">Flutter Spinkit</a></td>
    <td><a href="https://pub.dev/packages/flutter_spinkit" target="_blank">flutter_spinkit: ^5.1.0</a></td>
    <td><img align="right" src="screenshots/20_flutter_spinkit.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>21</td>
    <td><a href="/lib/21_audioplayers/audioplayers.dart">Audio Players</a></td>
    <td><a href="https://pub.dev/packages/audioplayers" target="_blank">audioplayers: ^0.20.1</a></td>
    <td><img align="right" src="screenshots/21_audioplayers.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>22</td>
    <td><a href="/lib/22_go_router/go_router.dart">Go Router</a></td>
    <td><a href="https://pub.dev/packages/go_router" target="_blank">go_router: ^3.0.1</a></td>
    <td><img align="right" src="screenshots/22_go_router.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>23</td>
    <td><a href="/lib/23_http/http.dart">HTTP</a></td>
    <td><a href="https://pub.dev/packages/http" target="_blank">http: ^0.13.4</a></td>
    <td><img align="right" src="screenshots/23_http.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>24</td>
    <td><a href="/lib/24_onboarding/onboarding.dart">Onboarding</a></td>
    <td><a href="https://pub.dev/packages/onboarding" target="_blank">onboarding: ^2.1.0</a></td>
    <td><img align="right" src="screenshots/24_onboarding.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>25</td>
    <td><a href="/lib/25_flutter_neumorphic/flutter_neumorphic.dart">Flutter Neumorphic</a></td>
    <td><a href="https://pub.dev/packages/flutter_neumorphic" target="_blank">flutter_neumorphic: ^3.2.0</a></td>
    <td><img align="right" src="screenshots/25_flutter_neumorphic.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>26</td>
    <td><a href="/lib/26_math_expressions/math_expressions.dart">Math Expressions</a></td>
    <td><a href="https://pub.dev/packages/math_expressions" target="_blank">math_expressions: ^2.3.0</a></td>
    <td><img align="right" src="screenshots/26_math_expressions.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>27</td>
    <td><a href="/lib/27_clay_containers/clay_containers.dart">Clay Containers</a></td>
    <td><a href="https://pub.dev/packages/clay_containers" target="_blank">clay_containers: ^0.3.2</a></td>
    <td><img align="right" src="screenshots/27_clay_containers.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>28</td>
    <td><a href="/lib/28_day_night_switcher/day_night_switcher.dart">Day Night Switcher</a></td>
    <td><a href="https://pub.dev/packages/day_night_switcher" target="_blank">day_night_switcher: ^0.2.0+1</a></td>
    <td><img align="right" src="screenshots/28_day_night_switcher_.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>29</td>
    <td><a href="lib/29_provider/my_provider.dart">Provider</a></td>
    <td><a href="https://pub.dev/packages/provider" target="_blank">provider: ^6.0.2</a></td>
    <td><img align="right" src="screenshots/29_provider.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>30</td>
    <td><a href="lib/30_feather_icons/feather_icons.dart">Feather Icons</a></td>
    <td><a href="https://pub.dev/packages/feather_icons" target="_blank">feather_icons: ^1.2.0</a></td>
    <td><img align="right" src="screenshots/30_feather_icons.png" height="350"></img></td>
  </tr>
  <tr>
    <td>31</td>
    <td><a href="lib/31_flutter_swipable/flutter_swipable.dart">Flutter Swipable</a></td>
    <td><a href="https://pub.dev/packages/flutter_swipable" target="_blank">flutter_swipable: ^1.2.1</a></td>
    <td><img align="right" src="screenshots/31_flutter_swipable.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>32</td>
    <td><a href="lib/32_image_picker/image_picker.dart">Image Picker</a></td>
    <td><a href="https://pub.dev/packages/image_picker" target="_blank">image_picker: ^0.8.4+6</a></td>
    <td><img align="right" src="screenshots/32_image_picker.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>33</td>
    <td><a href="lib/33_convex_bottom_bar/convex_bottom_bar.dart">Convex Bottom Bar</a></td>
    <td><a href="https://pub.dev/packages/convex_bottom_bar" target="_blank">convex_bottom_bar: ^3.0.0</a></td>
    <td><img align="right" src="screenshots/33_convex_bottom_bar.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>34</td>
    <td><a href="lib/34_intro_slider/intro_slider.dart">Intro Slider</a></td>
    <td><a href="https://pub.dev/packages/intro_slider" target="_blank">intro_slider: ^3.0.3</a></td>
    <td><img align="right" src="screenshots/34_intro_slider.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>35</td>
    <td><a href="lib/35_parallax_animation/parallax_animation.dart">Parallax Animation</a></td>
    <td><a href="https://pub.dev/packages/parallax_animation" target="_blank">parallax_animation: ^0.0.3</a></td>
    <td><img align="right" src="screenshots/35_parallax_animation.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>36</td>
    <td><a href="lib/36_flutter_staggered_grid_view/flutter_staggered_grid_view.dart">Flutter Staggered Grid View</a></td>
    <td><a href="https://pub.dev/packages/flutter_staggered_grid_view" target="_blank">flutter_staggered_grid_view: ^0.6.1</a></td>
    <td><img align="right" src="screenshots/36_flutter_staggered_grid_view.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>37</td>
    <td><a href="lib/37_shimmer/shimmer.dart">Shimmer</a></td>
    <td><a href="https://pub.dev/packages/shimmer" target="_blank">shimmer: ^2.0.0</a></td>
    <td><img align="right" src="screenshots/37_shimmer.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>38</td>
    <td><a href="lib/38_lottie/lottie.dart">Lottie</a></td>
    <td><a href="https://pub.dev/packages/lottie" target="_blank">lottie: ^1.2.1</a></td>
    <td><img align="right" src="screenshots/38_lottie.gif" height="350"></img></td>
  </tr>
</table>
