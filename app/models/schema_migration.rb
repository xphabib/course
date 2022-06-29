# == Schema Information
#
# Table name: schema_migrations
#
#  version :string(255)      not null, primary key
#
class SchemaMigration < ActiveRecord::Base

    self.primary_key = :version

end
