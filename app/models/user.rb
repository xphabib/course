# == Schema Information
#
# Table name: users
#
#  id                      :bigint           unsigned, not null, primary key
#  affiliator_status       :integer          default(0), not null
#  biography               :text(65535)
#  contact_no              :string(15)       not null
#  current_balance         :float(53)        default(0.0), not null
#  deleted_at              :datetime
#  email                   :string(255)      not null
#  email_verified_at       :datetime
#  gender                  :integer
#  instructor_level        :integer          default(1), not null
#  job_title               :string(255)
#  max_rating              :float(53)        default(0.0), not null
#  name                    :string(255)
#  notification            :text(16777215)
#  password                :string(255)      not null
#  profile_photo           :string(255)
#  remember_token          :string(100)
#  security_answer         :string(255)
#  security_question       :string(255)
#  status                  :integer          default(1), not null
#  total_earnings          :float(53)        default(0.0), not null
#  total_enrollments       :bigint           default(0), unsigned, not null
#  total_purchased         :bigint           default(0), unsigned, not null
#  total_withdrawal_amount :float(53)        default(0.0), not null
#  user_name               :string(255)      not null
#  user_type               :integer          default(0), not null
#  website                 :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#  city_id                 :integer
#  country_id              :integer
#  facebook_id             :string(255)
#  instagram_id            :string(255)
#  linkedin_id             :string(255)
#  twitter_id              :string(255)
#  youtube_id              :string(255)
#
# Indexes
#
#  users_email_unique      (email) UNIQUE
#  users_user_name_unique  (user_name) UNIQUE
#
class User < ActiveRecord::Base



end
