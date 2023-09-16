const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
	content: [
		"./public/*.html",
		"./app/helpers/**/*.rb",
		"./app/javascript/**/*.js",
		"./app/views/**/*.{erb,haml,html,slim}",
	],
	theme: {
		extend: {
			fontFamily: {
				sans: ["Inter var", ...defaultTheme.fontFamily.sans],
				inconsolata: ["Inconsolata", "sans"],
			},
		},
	},
	plugins: [
		require("@tailwindcss/forms"),
		require("@tailwindcss/aspect-ratio"),
		require("@tailwindcss/typography"),
		require("@tailwindcss/container-queries"),
    require("@tailwindcss/line-clamp"),
	],
	variants: {
		backgroundColor: ["responsive", "hover", "focus"],
	},
};
