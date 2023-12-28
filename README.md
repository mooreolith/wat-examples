# WebAssembly Examples
(from MDN)

This repository contains the [MDN examples](https://developer.mozilla.org/en-US/docs/WebAssembly/Understanding_the_text_format) minimal examples of WebAssembly Text format (the .wat files). 
These .wat files can be converted to binary wasm files using the [wat2wasm tool](https://github.com/WebAssembly/wabt).

## Running
To run these examples, serve this directory up in a web server. You can use 
```bash
python3 -m http.server
``` 
from this directory. 

The action happens in the console. The different html files explore different aspects of the tutorial.