class RestauranteObserver < ActiveRecord::Observer
  def before_create(r)
      puts "logando a gravação #{r.nome}"   
    end
end
