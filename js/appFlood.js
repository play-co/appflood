import event.Emitter;
var AppFlood = Class(event.Emitter, function () {
	this.showInterstitial = function (callback, cbArgs) {
		logger.log("{appFlood} Showing interstitial");

		if (NATIVE && NATIVE.plugins && NATIVE.plugins.sendEvent) {
			NATIVE.plugins.sendEvent("AppFloodPlugin", "showInterstitial",
				JSON.stringify({}));
		}

        this.callback = callback;
        this.cbArgs = cbArgs;
	};

    this._initNATIVE = function _a_init() {
        NATIVE.events.registerHandler('appflood', bind(this, function (evt) {
            logger.log('{appFlood} ad is done');
            this.emit('appflood:closed', this.callback, this.cbArgs);
            return;
        }));
    };

    this._initSimulated = function () {};

    if (NATIVE && NATIVE.events && NATIVE.plugins) {
        this.init = this._initNATIVE;
    } else {
        this.init = this._initSimulated;
    }

});

exports = new AppFlood();
