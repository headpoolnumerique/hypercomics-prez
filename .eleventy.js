const slugify = require('slugify')
const flaxaudio = require('./flaxaudio/') // For local development
const classy = require('markdown-it-classy')
const markdownIt = require('markdown-it')

module.exports = function(eleventyConfig) {
  let options = {
    html: true,
    breaks: true,
    linkify: true,
  }

  // add class to the MD

  eleventyConfig.setLibrary('md', markdownIt(options).use(classy))

  eleventyConfig.addPassthroughCopy({ 'static/css': '/css' })
  eleventyConfig.addPassthroughCopy({ 'static/fonts': '/fonts' })
  eleventyConfig.addPassthroughCopy({ 'static/js': '/js' })
  eleventyConfig.addPassthroughCopy({ 'static/images': '/images' })
  eleventyConfig.addPassthroughCopy({ 'static/videos': '/videos' })
  eleventyConfig.addPassthroughCopy({ 'static/audio': '/audio' })

  eleventyConfig.addPlugin(flaxaudio, {
    path: `/audio/`,
    audioEl: false,
  })

  // markdownIt options
  md = new markdownIt({ options })

  eleventyConfig.addFilter('markdownify', function(value) {
    return md.render(value)
  })
  eleventyConfig.addFilter('markdownifyInline', function(value) {
    return md.renderInline(value)
  })
  eleventyConfig.addFilter('slugify', function(value) {
    return slugify(value)
  })

  eleventyConfig.addFilter('monthYear', function(value) {
    return (date = new Date(value).toLocaleDateString(undefined, {
      month: 'long',
      year: 'numeric',
    }))
  })

  eleventyConfig.addCollection('prez', (collection) => {
    return [
      ...collection.getFilteredByGlob('src/content/prez/*.md').sort((a, b) => {
         if (a.data.order > b.data.order) return +1;
        if ( a.data.order < b.data.order) return -1;
      }),
    ]
  })

  // folder structures
  // -----------------------------------------------------------------------------
  // content, data and layouts comes from the src folders
  // output goes to public (for gitlab ci/cd)
  // -----------------------------------------------------------------------------
  return {
    // run the md through the njk engine first to use macro
    markdownTemplateEngine: 'njk',
    dir: {
      input: 'src',
      output: 'public',
      includes: 'layouts',
      data: 'data',
    },
  }
}

function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min)) + min
}
