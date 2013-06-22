# Game Closure DevKit Plugin: AppFlood

AppFlood support is still in progress.  In the meantime you can use this plugin as
a starting point in case you want to integrate it yourself.  Right now only the
Android platform is working and only for analytics it does not show advertising.

## Usage

Install the plugin with `basil install appflood`.

Include it in the `manifest.json` file under the "addons" section for your game:

~~~
"addons": [
	"appflood"
],
~~~

Under the Android section, you can configure the AppFlood plugin:

~~~
	"android": {
		"versionCode": 1,
		"icons": {
			"36": "resources/icons/android36.png",
			"48": "resources/icons/android48.png",
			"72": "resources/icons/android72.png",
			"96": "resources/icons/android96.png"
		},
		"AppFloodAppKey": "IwLrJrigtQAhf6KX",
		"AppFloodSecretKey": "4e0XRoegdd4L51b7724d"
	},
~~~

You can test for successful integration on the AppFlood website.

