ActiveAdmin.register Supporter do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :name, :short_description, :description, :has_document, :document_title, :document

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


  form do |f|
    f.inputs "Development Details" do
      f.input :title
      f.input :name
      f.input :short_description
      f.input :description
      f.input :has_document
      f.input :document_title
      f.input :document
    end
    f.actions
  end

end
