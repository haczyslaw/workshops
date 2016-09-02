class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    avg = subject_item.subject_item_notes.average(:value).to_f
    '%.2f' % avg
  end
end
