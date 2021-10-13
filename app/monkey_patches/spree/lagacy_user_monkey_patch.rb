# frozen_string_literal: true

module Spree
  module ZenAppUser
    def zenapp_user(token)
      new(
        id: 0,
        spree_roles: Spree::Role.where(name: 'admin'),
        email: 'test@solidus.io',
        spree_api_key: token[0...48]
      )
    end
  end

  LegacyUser.extend(ZenAppUser)
end
