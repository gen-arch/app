module.exports = {
  // モード値を production に設定すると最適化された状態で、
  // development に設定するとソースマップ有効でJSファイルが出力される
  entry: './src/main.ts',
  mode: 'development',
  // mode: 'production',
  output: {
    filename: 'bundle.js',
    path: __dirname + '/../app/aseets/js',
    publicPath: '/assets/'
  },
  devServer: {
    contentBase: 'public',
    compress: true,
    port: 8080,
    open: false
  },
  module: {
    rules: [
      {
        test: /\.(scss|css)$/,
        use: [
          'style-loader',
          'css-loader',
          'sass-loader'
        ],
      },
      {
        test: /\.ts$/,
        use: 'ts-loader'
      },
    ],
  },
  resolve: {
    extensions: [
      '.ts'
    ]
  }
};