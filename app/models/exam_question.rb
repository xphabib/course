# == Schema Information
#
# Table name: exam_questions
#
#  id                :bigint           unsigned, not null, primary key
#  question          :string(255)      not null
#  serial            :integer          default(0), not null
#  created_at        :datetime
#  updated_at        :datetime
#  course_section_id :bigint           unsigned, not null
#
class ExamQuestion < ActiveRecord::Base



end
