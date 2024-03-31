/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.rs"],
  theme: {
    extend: {
      colors: {
        'base': "#f46192",
        'second': "#f461ab"
      }
    },
  },
  plugins: [],
  important: false
}

