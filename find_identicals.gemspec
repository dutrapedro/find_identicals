Gem::Specification.new do |s|
    s.name = 'find_identicals'
    s.version = '1.0.0'
    s.executables << 'identicals'
    s.date = '2019-01-14'
    s.summary = "Find duplicate id in HTML document"
    s.description = "According to https://www.w3.org/TR/WCAG20-TECHS/H93.html, we should avoid duplicate id " +
                    "values on web pages, because there are \"errors that are known to cause problems for " +
                    "assistive technologies when they are trying to parse content that has the same id " +
                    "attribute on different elements\". Find Identicals is a Ruby Gem that scans HTML" +
                    "documents for duplicate ID attributes and list that on screen, helping to making " +
                    "sure the Web page does not have duplicate id values."
    s.authors = ["Pedro Dutra"]
    s.email = 'pedrovpdutra@gmail.com'
    s.files = ['lib/find_identicals.rb', 'lib/find_identicals/reader.rb']
    s.homepage = 'http://rubygems.org/gems/find_identicals'
    s.license = 'MIT'
    s.add_development_dependency 'minitest', '~> 5.11', '>= 5.11.3'
end