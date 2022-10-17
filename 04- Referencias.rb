
module Jor
    @plato_del_dia

    def self.plato_del_dia=(un_plato)
        @plato_del_dia = un_plato
    end

    def self.picantear!
        @plato_del_dia.agregar_ajies 5
    end 
end 


module Fideos
    @ajies=0
    
    def self.ajies
        @ajies
    end

    def self.picantear!
        @plato_del_dia.cantidadAjies
    end 
    
    def self.agregar_ajies(cantidadAjies)
        @ajies += cantidadAjies
    end

    def self.quitar_ajies!(cantidadAjies)
        @ajies -= cantidadAjies
    end 

    def self.picantes?
        @ajies > 2
    end 

    def self.descartar_la_salsa!
        @ajies = 0
    end 
end 


module Luchi

    def self.suavizar!(un_plato,cantidadAjies)
        if un_plato.ajies > 10
        un_plato.descartar_la_salsa!
        else 
        un_plato.quitar_ajies!(cantidadAjies)
        end  
    end
end