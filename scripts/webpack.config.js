/* global __dirname */
const path = require("path");
const ExtractTextPlugin = require("extract-text-webpack-plugin");

module.exports = {

  context: path.resolve(__dirname, "../src"), 

  entry: {
    index: "../index.coffee",
  },

  output: {
    path: path.resolve(__dirname, "../dist"),
    filename: "js/[name].js"
  },

  module: {
    rules: [
      {
        test: /\.coffee$/,
        use: [ 'coffee-loader' ]
      },
      // {
      //   test: /\.js$/,
      //   exclude: /node_modules/,
      //   use: [{
      //     loader: "babel-loader"
      //   }]
      // },
      {
        test: /\.css$/,
        use: ExtractTextPlugin.extract({
          fallback: "style-loader",
          use: "css-loader"
        })
      }
    ]
  },

  plugins: [
    new ExtractTextPlugin("css/app.css"),
  ],

  devtool: "source-map"

};
