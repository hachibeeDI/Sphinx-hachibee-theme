(function() {
  var RoleAdjuster;

  RoleAdjuster = (function(exports) {
    var menuselection;
    menuselection = function() {
      var _create_menulabel;
      _create_menulabel = function(content) {
        var el;
        el = document.createElement('span');
        el.className = 'menu';
        el.textContent = content;
        return el;
      };
      return window.addEventListener('load', function() {
        var content, m, menu_elements, menu_text, menuselections, _i, _j, _len, _len1;
        menuselections = document.querySelectorAll('.menuselection');
        for (_i = 0, _len = menuselections.length; _i < _len; _i++) {
          menuselection = menuselections[_i];
          content = menuselection.textContent;
          menuselection.textContent = '';
          menu_elements = (function() {
            var _j, _len1, _ref, _results;
            _ref = content.split('‣');
            _results = [];
            for (_j = 0, _len1 = _ref.length; _j < _len1; _j++) {
              menu_text = _ref[_j];
              _results.push(_create_menulabel(menu_text.replace(/^\s+|\s+$/g, "")));
            }
            return _results;
          })();
          for (_j = 0, _len1 = menu_elements.length; _j < _len1; _j++) {
            m = menu_elements[_j];
            menuselection.appendChild(m);
            menuselection.appendChild((function() {
              var el;
              el = document.createElement('span');
              el.className = 'menu-separator icon-rightarrow';
              return el;
            })());
          }
        }
      });
    };
    exports.menuselection = menuselection;
    return exports;
  })({});

  RoleAdjuster.menuselection();

}).call(this);
