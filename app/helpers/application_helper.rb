module ApplicationHelper

	def mark_required(object, attribute)
	  "*" if object.class.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator
	end

    # This method creates a link with `data-id` `data-fields` attributes. These attributes are used to create new instances of the nested fields through Javascript.
    def link_to_add_fields(name, form, association)

        new_object = form.object.send(association).klass.new

        id = new_object.object_id

    
        fields = form.fields_for(association, new_object, child_index: id) do |builder|
            render(association.to_s.singularize + "_fields", form: builder)
        end

        link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})

    end
end

