Type.registerNamespace('IntroAjax');

IntroAjax.BorderAnimation = function IntroAjax$BorderAnimation(
      color, thickness, duration) {
    this._color = color;
    this._thickness = thickness;
    this._duration = duration;
}

// Method to start the animation on the specified panel
function IntroAjax$BorderAnimation$animatePanel(panelElement) {
    if (arguments.length !== 1) throw Error.parameterCount();

    var style = panelElement.style;
    style.borderWidth = this._thickness;
    style.borderColor = this._color;
    style.borderStyle = 'solid';

    window.setTimeout(function () { { style.borderWidth = 0; } },
                       this._duration);
}

IntroAjax.BorderAnimation.prototype = {
    animatePanel: IntroAjax$BorderAnimation$animatePanel
}

IntroAjax.BorderAnimation.registerClass('IntroAjax.BorderAnimation');
