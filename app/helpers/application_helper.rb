module ApplicationHelper
    def validation_status(user, attr)
        return :ignore unless user.attributes[attr.to_s].present?
        user.errors[attr].present? ? :invalid : :valid
      end
      def validation_message(user, attr)
        case validation_status(user, attr)
        when :invalid
          errors = user.errors.messages[attr].map { |m| "#{attr.to_s.titleize} #{m}" }
          tag.small(errors.join(", "), class: "invalid")
        when :valid then tag.small("Great job! #{attr.to_s.titleize} is valid.", class: "valid")
        else tag.small("Please enter a value for #{attr.to_s.titleize}.", class: "opacity-40")
        end
      end
    end
