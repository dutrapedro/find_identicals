# frozen_string_literal: true

require 'minitest/autorun'
require 'find_identical/reader'

class TestReader < Minitest::Test

  LOCAL_HTML_PATH = "#{File.dirname(__FILE__)}/fixtures/test_with_duplicate.html"
  REMOTE_HTML_PATH = 'https://stackoverflow.com/'

  def test_html_document_is_not_empty_for_existent_local_document
    document = Reader.html_document(LOCAL_HTML_PATH)
    refute_nil document
    refute_empty document
  end

  def test_html_document_raise_an_error_when_local_document_does_not_exists
    assert_raises { Reader.html_document('not_existent_path') }
  end

  def test_html_document_is_not_emtpy_for_existent_remote_document
    document = Reader.html_document(REMOTE_HTML_PATH)
    refute_nil document
    refute_empty document
  end
end
