Gem::Specification.new do |s|
    s.name = 'find_identicals'
    s.version = '1.0.0'
    s.executables << 'identicals'
    s.date = '2019-01-14'
    s.summary = "Find duplicate id in HTML document"
    s.description = "Find Identicals Scans HTML..."
    s.authors = ["Pedro Dutra"]
    s.email = 'pedrovpdutra@gmail.com'
    s.files = ['lib/find_identicals.rb', 'lib/find_identicals/reader.rb']
    s.homepage = 'http://rubygems.org/gems/find_identicals'
    s.license = 'MIT'
    s.add_development_dependency 'minitest', '~> 5.11', '>= 5.11.3'
end