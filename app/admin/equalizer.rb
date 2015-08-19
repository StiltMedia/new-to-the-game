ActiveAdmin.register Equalizer do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :picture, :description, facts_attributes: [:id, :fact, :_destroy]


#
# or
#
form do |f|
  f.inputs "Equalizer Details" do
    f.input :name
    f.input :picture, :hint => f.image_tag(f.object.picture.url(:admin))
    f.input :description
    f.has_many :facts do |a|
      a.input :fact
      a.input :_destroy, :as=>:boolean, :label=>'Remove'
    end

  end
  f.actions
end


end
