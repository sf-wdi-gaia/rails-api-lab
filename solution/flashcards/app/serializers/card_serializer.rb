class CardSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer, :answer_hidden
end
