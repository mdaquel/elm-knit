# elm-knit
An elm webapp boilerplate.

## Table Of Contents
1. [Requirements](#requirements)
2. [Installation](#installation)
3. [Structure](#structure)
4. [Running](#running)
5. [Dependencies](#dependencies)

## Requirements
* node ^6
* yarn ^0.28.4

## Installation

```bash
$ git clone https://github.com/mdaquel/elm-knit.git <project-name>
$ cd <project-name>
```
## structure

```
.
├── build                    # All build-related code
├── elm-stuff                # Elm packages
├── node_modules             # Node packages
├── src                      # Application source code
│   ├── index.html           # Main HTML page container for app
│   ├── index.js             # Application bootstrap and rendering
│   ├── Main.elm             # Browser normalization and polyfills
├── .gitignore               # gitignore file-loader
├── elm-package.json         # elm related configuration
├── package.json             # node related configuration
├── README.md                # readme file
├── webpack.config.js        # webpack configuration file
└── yarn.lock                # yarn dependencies lock file
```

## Running

After completing the [installation](#installation) step, you're ready to start the project!

```bash
$ yarn start  
```

Additional scripts:

|`yarn <script>`    |Description|
|-------------------|-----------|
|`start`            |Serves your app at `localhost:3000`|
|`build`            |Builds the application to ./dist|

## Dependencies
* [elm-lang/core](http://package.elm-lang.org/packages/elm-lang/core/latest)
* [elm-lang/html](http://package.elm-lang.org/packages/elm-lang/http/latest)
* [webpack](https://webpack.js.org/)
* [webpack-dev-server](https://github.com/webpack/webpack-dev-server)
* [elm-webpack-loader](https://github.com/elm-community/elm-webpack-loader)
* [file-loader](https://github.com/webpack-contrib/file-loader)
* [style-loader](https://github.com/webpack-contrib/style-loader)
* [css-loader](https://github.com/webpack-contrib/css-loader)
* [url-loader](https://github.com/webpack-contrib/url-loader)
