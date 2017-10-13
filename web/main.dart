// Copyright (c) 2017, Callum D E Smith. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

void main() {
  querySelector('#enter').onClick.listen(clickedOnEnter);
}

clickedOnEnter(e) {
  InputElement input = querySelector('#commands');
  input.style.borderColor = "#55FF55";
  String output = '';
  switch(input.value) {
    case 'left':
      output = 'You are now going left.';
      break;
    case 'right':
      output = 'You are now going right.';
      break;
    case 'up':
      output = 'You are now going up.';
      break;
    case 'down':
      output = 'You are now going down.';
      break;
    default:
      output = 'Please enter: left, right, up or down.';
  }
  var outputHTML = '<div>${output}</div>';
  querySelector('#output').appendHtml(outputHTML);
}
