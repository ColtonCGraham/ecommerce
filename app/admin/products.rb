# frozen_string_literal: true

ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :basePrice, :description, :image, :category_id, pictures: []
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :basePrice, :description, :sale_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :name
      f.input :basePrice
      f.input :description
      f.input :image, as: :file, multiple: true
      f.file_field :pictures, as: :file, multiple: true
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :basePrice
      row :description
      row :image do |ad|
        image_tag url_for(ad.image)
      end
      row :pictures do |pic|
        image_tag url_for(pic.image)
      end
    end
  end
end
