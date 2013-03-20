Spree::Admin::VariantsController.class_eval do
  def create_all
    @product = Spree::Product.find_by_permalink(params[:product_id])
    options = []

    @product.option_types.each do |o|
      options << o.option_values.collect(&:id)
    end

    options = SpreeVariantAllOptions::ArrayHelper.array_permutation options

    options.each do |ids|
      v = @product.variants.new
      v.option_value_ids = ids.flatten
      v.price = @product.price
      v.weight = @product.weight
      v.height = @product.height
      v.width = @product.width
      v.depth = @product.depth
      v.save
    end

    redirect_to admin_product_variants_url(@product)
  end
end
