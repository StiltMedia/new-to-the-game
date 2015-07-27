ActiveAdmin.register DidYouKnow do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :description, :picture
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
      f.input :description
      f.input :picture, :hint => f.image_tag(f.object.picture.url(:admin))
    end
    f.actions
  end


end
