RailsAdmin.config do |config|

  config.main_app_name = ["Biblioteca", ""]

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true


  config.model Author do
    create do
      field  :name
    end
   
    edit do
      field  :name
      field  :books
    end
  end

  config.model Client do
    create do
      field  :name
    end
   
    edit do
      field  :name
      field  :reservations
    end
  end

  config.model Category do
    create do
      field  :name
    end
   
    edit do
      field  :name
      field  :books
    end
  end

  config.model User do
    create do
      field :name
      field :kind
      field :email
      field :password
    end
   
    edit do
      field :name
      field :kind
      field :email
      field :password
    end
  end

  config.model Reservation do
    create do
      field :book
      field :client
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
   
    edit do
      field :book
      field :client
    end
  end

  config.model Book do
    create do
      field :name 
      field :stock
      field :author
      field :category
    end
   
    edit do
      field :name 
      field :stock
      field :author
      field :category
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
