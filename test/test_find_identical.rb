# frozen_string_literal: true

require 'minitest/autorun'
require 'mocha/minitest'
require 'find_identical'

class TestFindIdentical < Minitest::Test
    include Reader

    def setup
        @html_with_duplicate = File.read("#{File.dirname(__FILE__)}/fixtures/test_with_duplicate.html")
        @html_without_duplicate = File.read("#{File.dirname(__FILE__)}/fixtures/test_without_duplicate.html")
    end
    
    def test_find_identical_returns_a_list_of_ids_when_find_some_duplicate
        Reader.stubs(:html_document).returns(@html_with_duplicate)
        find_identical = FindIdentical.new('https://aurl.com')

        duplicates = find_identical.identical

        refute_empty(duplicates)
        assert_equal(duplicates.size, 2)
        assert_includes(duplicates, 'div1')
        assert_includes(duplicates, 'td1')
    end

    def test_find_identical_returns_empty_when_no_duplicate_found
        Reader.stubs(:html_document).returns(@html_without_duplicate)
        find_identical = FindIdentical.new('https://aurl.com')

        duplicates = find_identical.identical

        assert_empty(duplicates)
    end
    
end