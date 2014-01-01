var ns = (function(exports) {
  var Slider = function constructor() {
    this._init_handler = function(func) {
      window.addEventListener('load', func);
    };
  };

  Slider.prototype.back_to_top = function(id) {
    var to_top = function(e) {
      var scroll_top = document.documentElement.scrollTop || document.body.scrollTop;
      if (scroll_top > 0) {
        var diff = Math.max(scroll_top / 2, 20);
        window.scrollTo(0, scroll_top - diff);
        window.setTimeout(to_top, 25, e);
      }
    };

    this._init_handler(function() {
      var target = document.getElementById(id);
      target.addEventListener('click', to_top);
    });
  };

  exports.Slider = Slider;
  return exports;
})({});

var slider = new ns.Slider();
slider.back_to_top('raise-top');
