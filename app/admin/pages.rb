ActiveAdmin.register Page do
  index do
    column :title
    column :slug
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :keywords
      f.input :description
      f.input :slug
    end
    f.inputs "Content" do
      f.input :body
    end
    f.buttons
  end
end
