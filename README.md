Inline CSS HTML Converter
==
[![Build Status](https://travis-ci.org/Garllon/inline-css-html-converter.svg?branch=master)](https://travis-ci.org/Garllon/inline-css-html-converter)
[![Code Climate](https://codeclimate.com/github/Garllon/inline-css-html-converter.png)](https://codeclimate.com/github/Garllon/inline-css-html-converter)
[![Gem Version](https://badge.fury.io/rb/inline-css-html-converter.png)](https://badge.fury.io/rb/inline-css-html-converter)

I use the MailChimpAPI

At the moment i use the APi Version 2.0.
[MailChimp 2.0](https://apidocs.mailchimp.com/api/2.0/helper/inline-css.php)

How it works
===

The Encoding of the files must be UTF-8 and the FileFormat must be unix.

```
gem 'inline-css-html-converter',
 git: 'https://github.com/Garllon/inline-css-html-converter.git'

require 'inline-css-html-converter'
```


```
InlineCssHtmlConverter::Worker.new(your_apikey, your_html).perform
```

In Progress
===
At the moment i work on a version, which works with MailChimp 3.0.
