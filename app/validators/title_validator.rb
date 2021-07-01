class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title && record.title.match?(/Secret|Guess|Top [0-9]*|Won't Believe/)
          record.errors[:title] << "errors"
        end
    end
end