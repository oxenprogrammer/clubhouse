module ApplicationHelper
  def navbar_link_name(user)
    link_to user.username, edit_user_registration_path, class: 'nav-link' if user_signed_in?
  end

  def navbar_link_logout
    link_to 'Logout', destroy_user_session_path, method: :delete, class: 'nav-link' if user_signed_in?
  end

  def navbar_link_sign_up
    link_to 'Sign Up', new_user_registration_path, class: 'nav-link' unless user_signed_in?
  end

  def navbar_link_login
    link_to 'Login', new_user_session_path, class: 'nav-link' unless user_signed_in?
  end
end
