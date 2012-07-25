class Scan < ActiveRecord::Base
  
  def products
  	@object_infos ||= find_products
  end

  private

  def find_products
  	Product.find(:all, :conditions => conditions)
  end

  def keyword_conditions
  	["object_infos.obj_name LIKE ?", "%#{keywords}%"] unless keywords.blank?
  end

  def minimum_price_conditions
  	["object_infos.obj_price >= ?", minimum_price] unless minimum_price.blank?
  end

  def maximum_price_conditions
  	["object_infos.obj_price <= ?", maximum_price] unless maximum_price.blank?
  end

  def category_conditions
  	["object_infos.category = ?", category_id] unless category.blank?
  end

  def conditions
  	[conditions_clauses.join(' AND '), *conditions_options]
  end

  def conditions_clauses
  	conditions_parts.map { |condition| condition.first }
  end

  def conditions_options
  	conditions_parts.map { |condition| condition[1..-1] }.flatten
  end

  def conditions_parts
  	private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
  end


end
