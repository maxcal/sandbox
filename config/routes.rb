Rails.application.routes.draw do
  # Bad hack because relative_url_root does not work.
  # @fixme, @todo
  scope ENV['MYAPP_RELATIVE_URL_ROOT'] do
    root 'welcome#category'
    resources :products
  end
end
