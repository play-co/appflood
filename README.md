# Game Closure DevKit Plugin: AppFlood

## Usage

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

