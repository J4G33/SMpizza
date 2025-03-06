module.exports = {
  darkMode: 'class', // Ensures dark mode is toggled by the 'dark' class
  content: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    theme: {
      extend: {
        fontSize: {
          'xs': '0.75rem', // Smaller than default 'xs'
          'sm': '0.875rem', // Smaller than default 'sm'
        },
      },
    },
    extend: {},
  },
  plugins: [],
}