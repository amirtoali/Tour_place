# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
respond_to :json

private

def respond_with(resource, _options = {})
  if resource.persisted?
    render json: {
      status: :success,
      data: resource
    }
  else
    render json: {
      status: :error,
      errors: resource.errors.full_messages
    }, status: :unprocessable_entity
  end
end


end
