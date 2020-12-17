module ApplicationHelper
    def validation_status(student, attr)
        puts "some lines"
        puts student
        puts attr
        puts "some lines at the bottom too"
        return :ignore unless student.attributes[attr.to_s].present?
        student.errors[attr].present? ? :invalid : :valid
      end
      def validation_message(student, attr)
        case validation_status(student, attr)
        when :invalid
          errors = student.errors.messages[attr].map { |m| "#{attr.to_s.titleize} #{m}" }
          tag.small(errors.join(", "), class: "invalid")
        when :valid then tag.small("Great job! #{attr.to_s.titleize} is valid.", class: "valid")
        else tag.small("Please enter a value for #{attr.to_s.titleize}.", class: "opacity-40")
        end
      end
    end
