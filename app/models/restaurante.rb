class Restaurante < ActiveRecord::Base
  has_many :qualificacoes
  has_and_belongs_to_many :pratos
  has_many :comentarios, :as => :comentavel
   
  
  validates_presence_of :nome, :message => " Nome Obrigatório !"
  validates_uniqueness_of :nome, :message => " Nome Exclusivo !" 
  validates_length_of :nome, :minimum => 2, :message => " Minimo 2 Caracteres"
  validate :primeira_letra_maiuscula


  private
  def primeira_letra_maiuscula
    errors.add("nome", "primeira letra maiuscula") unless nome =~/[A-Z].*/
  end
  
end
