const HtmlWebpackPlugin = require('html-webpack-plugin')

// Generate OneWeb-like HTML
const template = new HtmlWebpackPlugin({
  inject: false,
  template: require('html-webpack-template'),
  minify: {
    collapseWhitespace: true,
    preserveLineBreaks: true
  }
})

const elm = {
  test: /\.elm$/,
  exclude: [/elm-stuff/, /node_modules/],
  use: [{
    loader: 'elm-webpack-loader',
    options: {
      verbose: true,
      warn: true,
      debug: true
    }
  }]
}

module.exports = {
  plugins: [template],
  module: { rules: [elm] }
}
