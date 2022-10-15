module Golondrina

    @energia = 100
    @ciudad = Obera

    def self.ciudad
        @ciudad
    end

    def self.cantar!
        ¡pri pri prii!
    end

    def self.comer_lombriz!
        @energia += 20
    end

    def self.volar_en_circulos!
        @energia -= 10
    end

    def self.volar_hacia!(destino)
        self.gastar_energia! destino
        @ciudad = destino
    end

    def self.gastar_energia! distancia_a
        @energia -= (@ciudad.kilometro - distancia_a.kilometro).abs / 2
    end
end


module Obera

    @ciudad = Obera

    def self.kilometro
    1040
    end

    def self.gastar_energia! distancia_a
        @energia -= (@ciudad.kilometro - distancia_a.kilometro).abs / 2
    end
end

module Iruya
    def self.kilometro
    1710
    end

    def self.distancia_a destino
        (@ciudad.kilometro - destino.kilometro).abs
    end

    def self.gastar_energia! distancia_a
        @energia -= (@ciudad.kilometro - distancia_a.kilometro).abs / 2
    end
end

module BuenosAires
    def self.kilometro
    0
    end

    def self.distancia_a destino
        (@ciudad.kilometro - destino.kilometro).abs
    end
    
    def self.gastar_energia! distancia_a
        @energia -= (@ciudad.kilometro - distancia_a.kilometro).abs / 2
    end
end