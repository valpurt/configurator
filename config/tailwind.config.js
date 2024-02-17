const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './node_modules/flowbite/**/*.js',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  daisyui: {
    themes: [
      {
        "valpurt": {
          "primary": "#4a00ff",
          "secondary": "#ff00d3",
          "accent": "#00d7c0",
          "neutral": "#2b3440",
          "base-100": "#ffffff",
          "info": "#00b5ff",
          "success": "#9affdc",
          "warning": "#ffbe00",
          "error": "#ff5861",
        },
      },
    ],
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('flowbite/plugin'),
    require('daisyui'),
  ]
}
