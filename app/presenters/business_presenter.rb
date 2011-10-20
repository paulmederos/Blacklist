class BusinessPresenter < DelegatePresenter::Base

  def biz_greeting
    "Hello, #{self.name}"
  end
end
