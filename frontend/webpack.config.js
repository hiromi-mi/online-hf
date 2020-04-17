const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
// https://github.com/elm-community/elm-webpack-loader
module.exports = {
   mode: 'development',
   entry: './index.js',
   output: {
      path: path.resolve(__dirname, './')
   },
   plugins: [
      new MiniCssExtractPlugin()
   ],
   module: {
      rules: [
         {
            test: /\.elm$/,
            exclude: [/elm-stuff/, /node_modules/, /elm-mdc/],
            loader: "elm-webpack-loader",
         },
         {
            test: /\.s[ac]ss$/i,
            exclude: [/elm-stuff/, /node_modules/, /elm-mdc/],
            include: [
               path.resolve(__dirname, './')
            ],
            use: [
               'style-loader',
               'css-loader',
               'sass-loader',
            ]
         }
      ]
   }

   // TODO devServer
};
