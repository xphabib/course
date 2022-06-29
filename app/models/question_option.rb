# == Schema Information
#
# Table name: question_options
#
#  id               :bigint           unsigned, not null, primary key
#  is_answer        :boolean          default(FALSE), not null
#  option           :string(255)      not null
#  serial           :integer          default(0), not null
#  created_at       :datetime
#  updated_at       :datetime
#  exam_question_id :bigint           unsigned, not null
#
class QuestionOption < ActiveRecord::Base



end
