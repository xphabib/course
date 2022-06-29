# == Schema Information
#
# Table name: user_answers
#
#  id                 :bigint           unsigned, not null, primary key
#  is_correct         :boolean          default(FALSE), not null
#  created_at         :datetime
#  updated_at         :datetime
#  exam_question_id   :bigint           unsigned, not null
#  question_option_id :bigint           unsigned, not null
#  user_id            :bigint           unsigned, not null
#
class UserAnswer < ActiveRecord::Base



end
