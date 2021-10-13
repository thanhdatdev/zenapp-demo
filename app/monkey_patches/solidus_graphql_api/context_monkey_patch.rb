# frozen_string_literal: true

module SolidusGraphqlApi
  # Use demo user for the POST /graphql endpoint
  module ZenAppUser
    def current_user
      token = bearer_token || order_token
      return unless token

      Current.user = Spree::LegacyUser.zenapp_user(token)
    end
  end

  Context.prepend(ZenAppUser)
end
