module.exports = {
  // モード値を production に設定すると最適化された状態で、
	// development に設定するとソースマップ有効でJSファイルが出力される
	entry: './src/index.js',
  mode: 'development',
  // mode: 'production',
	output: {
    filename: 'bundle.js',
    path: __dirname + '/../app/assets/js',
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
    ],
  }
};