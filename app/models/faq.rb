# == Schema Information
#
# Table name: faqs
#
#  id          :bigint           unsigned, not null, primary key
#  description :text(65535)      not null
#  serial      :integer          not null
#  status      :boolean          default(TRUE), not null
#  title       :string(255)      not null
#  user_type   :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#  menu_id     :integer          not null
#
class Faq < ActiveRecord::Base



end
