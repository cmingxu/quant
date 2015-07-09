# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: wechat_user_activities
#
#  id             :integer          not null, primary key
#  wechat_user_id :integer
#  openid         :string(255)
#  activity       :string(255)
#  sub_activity   :string(255)
#  params         :text(65535)
#  created_at     :datetime
#  updated_at     :datetime
#

class WechatUserActivity < ActiveRecord::Base
  belongs_to :wechat_user

  def self.log_activity!(request, activity, sub_activity)
    create! do |a|
      a.openid = request[:FromUserName]
      a.activity = activity
      a.sub_activity = sub_activity
      a.params = request.message_hash
    end
  end

  def self.vendor_log_activity!(request, activity, sub_activity)
    create! do |a|
      a.openid = request[:FromUserName]
      a.activity = "vendor/" + activity
      a.sub_activity = sub_activity
      a.params = request.message_hash
    end
  end
end
