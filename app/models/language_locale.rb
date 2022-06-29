# == Schema Information
#
# Table name: language_locales
#
#  id       :bigint           unsigned, not null, primary key
#  code     :string(35)       not null
#  language :string(35)       not null
#  locale   :string(35)       not null
#  name     :string(255)      not null
#  status   :integer          not null
#
class LanguageLocale < ActiveRecord::Base



end
