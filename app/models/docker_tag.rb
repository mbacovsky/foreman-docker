class DockerTag < ActiveRecord::Base
  belongs_to :image, :class_name => 'DockerImage', :foreign_key => 'docker_image_id'

  attr_accessible :tag, :image

  validates :image, :presence => true
end
