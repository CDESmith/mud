// Copyright (c) 2017, Callum D E Smith. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

void main() {
  querySelector('#output').text = 'Your Dart app is running.';

  querySelector('#enter').onClick.listen(clickedOnEnter);
}

clickedOnEnter(e) {
  InputElement input = querySelector('#commands');
  querySelector('#output').appendHtml(input.value);
}
