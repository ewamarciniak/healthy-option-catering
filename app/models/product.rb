# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA
# @reference: Wesley Gorman, "Laptop Shop Tutorial"

class Product < ActiveRecord::Base
  default_scope :order => 'title'
  belongs_to :user
  has_many :line_items
  has_many :orders, :through => :line_items
  has_and_belongs_to_many :categories

  before_destroy :ensure_not_referenced_by_any_line_item
  #below code added 24.07.2012 to protect against mass assignment exploit
  attr_accessible :title, :description, :price, :image_url
  #end of code

# ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors[:base] << "Line Items present"
      return false
    end
  end

  def self.search(search_query)
    if search_query
      find(:all, :conditions => ['title LIKE ?', "%#{ search_query}%"])
    else
      find(:all)
    end
  end


  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
      :with => %r{\.(gif|jpg|png)$}i,
      :message => 'must be a URL for GIF, JPG or PNG image.'}
end
