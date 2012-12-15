ActiveAdmin.register Post do
  index do
    column :title
    column :created_at
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :snippet
    end
    f.inputs "Content" do
      f.input :body, as: :html_editor
    end
    f.buttons
  end
  
end
