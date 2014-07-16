SELECTOR_OF_HEADER = '#top-header'
ELEMENT_OF_HEADER = document.querySelector SELECTOR_OF_HEADER

SELECTOR_OF_RAISETOP_BUTTON = '#raise-top'
ELEMENT_OF_RAISETOP_BUTTON = document.querySelector SELECTOR_OF_RAISETOP_BUTTON

ElementAdjuster = do(namespace=ElementAdjuster || {}) ->
  namespace.phantom_header = ->
    scroll_y = document.documentElement.scrollTop || document.body.scrollTop
    if scroll_y <= 30
      ELEMENT_OF_HEADER.className = ""
    else
      ELEMENT_OF_HEADER.className = "modest"

  namespace.phantom_raise_top_button = ->
    scroll_y = document.documentElement.scrollTop || document.body.scrollTop
    if scroll_y <= 30
      ELEMENT_OF_HEADER.className = ""
    else
      ELEMENT_OF_HEADER.className = "modest"

  return namespace


window.addEventListener 'scroll', ElementAdjuster.phantom_header
