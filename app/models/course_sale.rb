# == Schema Information
#
# Table name: course_sales
#
#  id              :bigint           unsigned, not null, primary key
#  cart_info       :json
#  customer_email  :string(255)      not null
#  customer_name   :string(255)      not null
#  customer_phone  :string(15)       not null
#  discount_amount :float(53)        default(0.0), not null
#  ipn_response    :text(65535)
#  net_amount      :float(53)        default(0.0), not null
#  payment_method  :integer          not null
#  payment_status  :string(15)       not null
#  service_charge  :float(53)        default(0.0), not null
#  subtotal_amount :float(53)        default(0.0), not null
#  created_at      :datetime
#  updated_at      :datetime
#  currency_id     :bigint           unsigned, not null
#  store_id        :string(255)      not null
#  transaction_id  :string(255)      not null
#  user_id         :bigint           unsigned, not null
#
# Indexes
#
#  course_sales_transaction_id_unique  (transaction_id) UNIQUE
#
class CourseSale < ActiveRecord::Base



end
