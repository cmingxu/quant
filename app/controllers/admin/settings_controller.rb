# -*- encoding : utf-8 -*-
class Admin::SettingsController < Admin::BaseController
  def index
    @settings = O2oSetting.all
  end
end
