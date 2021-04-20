#!/bin/sh

dl=$1;
ghLink="https://raw.githubusercontent.com/mhlptl/configs/master/";
configStr="Config Download Complete"

if [ "$dl" = "ec" -o "$dl" = "all" ]; then
	curl "${ghLink}.editorconfig" --output .editorconfig --silent
	echo "editorconfig $configStr"
fi
if [ "$dl" = "eslint" -o "$dl" = "all" ]; then
	curl "${ghLink}.eslintignore" --output .eslintignore --silent
	curl "${ghLink}.eslintrc.json" --output .eslintrc --silent
	echo "eslint $configStr"
fi
if [ "$dl" = "prettier" -o "$dl" = "all" ]; then
	curl "${ghLink}.prettierignore" --output .prettierignore --silent
	curl "${ghLink}.prettierrc.json" --output .prettierrc --silent
	echo "Prettier $configStr"
fi
if [ "$dl" = "gitignore" -o "$dl" = "all" ]; then
	curl "${ghLink}.gitignore" --output .gitignore --silent
	echo "gitignore $configStr"
fi
if [ "$dl" = "ts" -o "$dl" = "all" ]; then
	curl "${ghLink}tsconfig.json" --output tsconfig.json --silent
	echo "TypeScript $configStr"
fi
if [ "$dl" = "webpack" -o "$dl" = "all" ]; then
	curl "${ghLink}webpack.config.ts" --output webpack.config.ts --silent
	echo "Webpack $configStr"
fi