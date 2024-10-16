class RegistrationsController < Devise::RegistrationsController
    respond_to :html, :json
  
    def create
      build_resource(sign_up_params)
  
      resource.save
      yield resource if block_given?
  
      if resource.persisted?
        if resource.active_for_authentication?
          sign_up(resource_name, resource)
          respond_with resource, location: after_sign_up_path_for(resource)
        else
          expire_data_after_sign_in!
          respond_with resource, location: after_inactive_sign_up_path_for(resource)
        end
      else
        clean_up_passwords resource
        set_minimum_password_length
        flash[:alert] = resource.errors.full_messages.join(', ')
        respond_with resource, status: :unprocessable_entity, location: new_user_registration_path
      end
    end
  end
  