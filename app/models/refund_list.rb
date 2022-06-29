# == Schema Information
#
# Table name: refund_lists
#
#  id                    :bigint           unsigned, not null, primary key
#  account_number        :string(255)      not null
#  payment_method        :string(255)      not null
#  purchase_date         :date             not null
#  purchase_price        :float(53)        not null
#  reason                :string(255)      not null
#  refund_amount         :float(53)        not null
#  created_at            :datetime
#  updated_at            :datetime
#  course_id             :bigint           unsigned, not null
#  course_sale_detail_id :bigint           unsigned, not null
#  transaction_id        :string(255)      not null
#  user_id               :bigint           unsigned, not null
#
class RefundList < ActiveRecord::Base



end
