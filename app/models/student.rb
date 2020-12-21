require 'elasticsearch/model'

class Student < ApplicationRecord
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
end
Student.import(force: true)
