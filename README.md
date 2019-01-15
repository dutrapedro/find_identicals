# Find Identical

[![Gem Version](https://badge.fury.io/rb/find_identical.svg)](https://badge.fury.io/rb/find_identical)


According to https://www.w3.org/TR/WCAG20-TECHS/H93.html, we should avoid duplicate id values on web pages, because there are "errors that are known to cause problems for assistive technologies when they are trying to parse content that has the same id attribute on different elements".
Find Identical is a Ruby Gem that scans HTML documents for duplicate ID attributes and list that on screen, helping to making sure the Web page does not have duplicate id values.

# Usage
- `gem install find_identical`
- `$ identical [/path/to/html or https://some-url]`
