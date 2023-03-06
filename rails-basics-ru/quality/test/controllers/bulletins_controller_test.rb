class ArticlesControllerTest < ActionDispatch::IntegrationTest
  self.use_transactional_tests = true
  test 'should get bulletins' do
    get bulletins_url
    assert_response :success
    assert_select 'h1', 'Bulletins'
  end

  test 'should get bulletin' do
    bulletin = bulletins :bulletin1
    get bulletin_path bulletin

    assert_response :success
    assert_select 'h1', 'Yandex'
    assert_select 'p', 'blabla'
  end
end
