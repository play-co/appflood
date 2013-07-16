# Game Closure DevKit Plugin: AppFlood

This plugin adds ad interstitial support from the [AppFlood service](http://appflood.com) for Android and iOS platforms.

## Usage

To use AppFlood to display an ad in your game, first use the [AppFlood website](http://appflood.com) to create a new app entry to get your AppKey and SecretKey.

Install the plugin with `basil install appflood`.

Include it in the `manifest.json` file under the "addons" section for your game:

~~~
"addons": [
	"appflood"
],
~~~

Under the Android/iOS sections, you can configure the AppFlood plugin:

~~~
	"android": {
		"versionCode": 1,
		"icons": {
			"36": "resources/icons/android36.png",
			"48": "resources/icons/android48.png",
			"72": "resources/icons/android72.png",
			"96": "resources/icons/android96.png"
		},
		"appFloodAppKey": "IwLrJrigtQAhf6KX",
		"appFloodSecretKey": "4e0XRoegdd4L51b7724d"
	},
~~~

~~~
	"ios": {
		"bundleID": "mmp",
		"appleID": "568975017",
		"version": "1.0.3",
		"icons": {
			"57": "resources/images/promo/icon57.png",
			"72": "resources/images/promo/icon72.png",
			"114": "resources/images/promo/icon114.png",
			"144": "resources/images/promo/icon144.png"
		},
		"appFloodAppKey": "18NDFokFS5pkCQxJ",
		"appFloodSecretKey": "XP46S8Mx11d6L51e49e0f"
	},
~~~

You can test for successful integration on the AppFlood website.

Then you can edit your game JavaScript code to import the AppFlood object:

~~~
import plugins.appflood.appflood as appflood;
~~~

And use the `showInterstitial` method to show an ad:

~~~
appflood.showInterstitial();
~~~
