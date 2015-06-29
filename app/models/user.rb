class User < ActiveRecord::Base
  rolify
  accepts_nested_attributes_for :roles,
                                allow_destroy: true,
                                reject_if: ->(hash){ hash["_keep"] != "1" }
end
