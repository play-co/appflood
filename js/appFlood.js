var AppFlood = Class(function () {
	this.showInterstitial = function () {
		logger.log("{appflood} Showing interstitial");

		if (NATIVE && NATIVE.plugins && NATIVE.plugins.sendEvent) {
			NATIVE.plugins.sendEvent("AppfloodPlugin", "showInterstitial",
				JSON.stringify({}));
		}
	};
});

exports = new AppFlood();
