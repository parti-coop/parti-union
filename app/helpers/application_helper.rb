module ApplicationHelper
  def upload_file_exists?(file_object)
    file_object.try(:file).try(:exists?)
  end
end
