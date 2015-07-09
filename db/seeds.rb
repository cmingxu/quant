
%w(xcm@qq.com markqiu@qq.com).each do |a|
  Staff.create :name => a, :password => a, :login => a
end
