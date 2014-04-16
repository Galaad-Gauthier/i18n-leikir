ActiveAdmin.register Translation do
  menu label: "Texts"

  actions :index, :edit, :update, :show

  index do
    column :locale
    column :key
    column :value
    default_actions
  end

   config.batch_actions = true
   batch_action :destroy, false
   batch_action :edit_translation do |ids, inputs|
     Translation.find(ids).each do |ts|
       ts.value = inputs[:new_translation]
       ts.save!
     end
     redirect_to :back, notice: "update ok"
   end

  show do |t|
    attributes_table do
      row :locale
      row :key
      row :value do
        raw t.value
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :locale
      f.input :key
      f.input :value, as: :html_editor
    end

    f.actions
  end

  controller do
    def permitted_params
      params.permit(:translation => [:locale, :key, :value, :interpolations, :is_proc])
    end
  end

end
