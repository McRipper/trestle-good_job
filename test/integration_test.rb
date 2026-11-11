require 'test_helper'

class GoodJobIntegrationTest < Minitest::Test
  def test_dashboard_rejects_an_unauthenticated_request
    response = Rack::MockRequest.new(Rails.application).get('/admin/good_job/web')
    assert_equal 404, response.status
  end

  def test_dashboard_has_a_mounted_route
    assert_equal '/admin/good_job/web', Trestle::Engine.routes.url_helpers.good_job_path
  end
end
