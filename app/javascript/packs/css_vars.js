import cssVars from 'css-vars-ponyfill';

console.log('hello from css_vars');


cssVars({
  include: 'link.theme-stylesheet',
  onlyLegacy: true,
  onlyVars: true,
  updateURLs: false,
  fixNestedCalc: false,
  silent: false,
  onComplete(cssText, styleNode) {
    console.info('CSS variable polyfill styles written: %O', styleNode);
  },
  onError(message, node, xhr, url) {
    console.error('CSS variable polyfill error: %s', message);
    console.debug('Error node: %O, URL: %s', node, url);
    console.debug('XHR object: %O', xhr);
  },
});
