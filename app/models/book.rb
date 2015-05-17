class Book < ActiveRecord::Base
  def publish_format()
      if self.publish_time.nil? then
         return '未記載';
      end
      return self.publish_time.strftime("%Y年 %m月 %d日");
  end
  def popular_format
      if self.popular.nil? then
         return ''
      end
      result = "";
      for num in 1..self.popular
         result += "★";
      end
      return result;
  end
end
