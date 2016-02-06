require 'test_helper'

class LeanTest < ThemeIntegrationTest

  setup do
    setup_site 'lean'
  end

  test 'theme structure' do
    assert theme = Bold::Theme['lean']
    assert tpl = theme.homepage_template
    assert_equal :home, tpl.key
  end

  test 'check special pages' do
    check_special_pages
  end

  test 'should show homepage and post' do
    check_home_page_and_post
  end

  test 'should show page' do
    check_shows_page
  end

  test 'should list posts' do
    check_archive
    check_tags
  end
end

