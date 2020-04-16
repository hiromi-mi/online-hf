const path = require('path');
// https://github.com/elm-community/elm-webpack-loader
module.exports = {
   mode: 'development',
   entry: './app.js',
   output: {
      path: path.resolve(__dirname, './')
   },
   module: {
      rules: [
         {
            test: /\.elm$/,
            exclude: [/elm-stuff/, /node_modules/, /elm-mdc/],
            loader: "elm-webpack-loader",
         }
      ]
   }

   // TODO devServer
};
