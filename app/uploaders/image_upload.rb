module Fae
  class ImageUploader < CarrierWave::Uploader::Base
    include CarrierWave::MimeTypes
    include CarrierWave::RMagick
    storage :fog

    # saves file size to DB
    process :save_file_size_in_model
    def save_file_size_in_model
      model.file_size = file.size
    end

    def extension_white_list
      %w(jpg jpeg gif png ico)
    end

    # Override the directory where uploaded files will be stored.
    # This is a sensible default for uploaders that are meant to be mounted:
    def store_dir
      "system/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

    version :mobile do
      process :resize_to_fill => [320,510]
    end

    version :tablet do
      process :resize_to_fill => [768,960]
    end

    version :thumb do
      process :resize_to_fill => [200,200]
    end
  end
end