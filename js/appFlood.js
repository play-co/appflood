var AppFlood = Class(function () {
	this.showInterstitial = function () {
		logger.log("{appFlood} Showing interstitial");

		if (NATIVE && NATIVE.plugins && NATIVE.plugins.sendEvent) {
			NATIVE.plugins.sendEvent("AppFloodPlugin", "showInterstitial",
				JSON.stringify({}));
		}
	};
});

exports = new AppFlood();
