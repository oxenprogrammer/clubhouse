module PostsHelper
  def show_profile
    render 'profile' if user_signed_in?
  end

  def show_author(user)
    user_signed_in? ? "Author: #{user.username}" : 'Author: Anonymous'
  end

  def show_image
    image_tag 'raggae.jpeg', class: 'img-responsive' unless user_signed_in?
  end

  def show_flash_notice
    flash[:notice] ? notice : ''
  end

  def show_flash_alert
    flash[:alert] ? alert : ''
  end
end
