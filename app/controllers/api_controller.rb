class ApiController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :render_404


  def render_404
    render json: {error: "Invalid ID", is_success: false}, status: 404
  end
end