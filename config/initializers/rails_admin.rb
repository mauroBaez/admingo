RailsAdmin.config do |config|
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard # mandatory
    index # mandatory
    new do
      except [SeoTool]
    end

    export
    bulk_delete
    show
    edit
    delete do
      except [SeoTool]
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    nestable
  end

  config.main_app_name = ['Rollinbox', '']
end
