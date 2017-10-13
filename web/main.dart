// Copyright (c) 2017, Callum D E Smith. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

void main() {
  querySelector('#enter').onClick.listen(clickedOnEnter);
}

clickedOnEnter(e) {
  InputElement input = querySelector('#commands');
  input.style.borderColor = "#55FF55";
  querySelector('#output').appendHtml('<div>${input.value}</div>');
}
