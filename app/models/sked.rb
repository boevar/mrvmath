class Sked < ActiveRecord::Base

def self.search(search)
  if search
    find(:all, :conditions => ['code LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
