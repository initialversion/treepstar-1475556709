Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "evaluations#index"
  # Routes for the Evaluation resource:
  # CREATE
  get "/evaluations/new", :controller => "evaluations", :action => "new"
  post "/create_evaluation", :controller => "evaluations", :action => "create"

  # READ
  get "/evaluations", :controller => "evaluations", :action => "index"
  get "/evaluations/:id", :controller => "evaluations", :action => "show"

  # UPDATE
  get "/evaluations/:id/edit", :controller => "evaluations", :action => "edit"
  post "/update_evaluation/:id", :controller => "evaluations", :action => "update"

  # DELETE
  get "/delete_evaluation/:id", :controller => "evaluations", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
