
class Zombi
    def initialize(salud_inicial)
        @salud = salud_inicial
    end
    
    def salud
        @salud
    end
    
    def sabe_correr?
        false
    end
    
    def gritar
        "¡agrrrg!"
    end

    def sin_vida?
        @salud == 0
    end
    
    def recibir_danio!(puntos)
      @salud = [@salud - puntos * 2, 0].max
    end
    
    def descansar!(minutos)
        @salud += minutos
    end
end


class SuperZombi < Zombi
    
    def sabe_correr?
        super
        true
    end

    def recibir_danio!(puntos)
      @salud = [@salud - puntos * 3, 0].max
    end
    
    def regenerarse!
        @salud = 100
    end
end


class Persona

    def energia
        @energia
    end

    def atacar!(zombi, danio)
        zombi.recibir_danio! danio
    end
end

class Sobreviviente < Persona
    def initialize
        @energia = 1000
    end

    def beber!
      @energia *= 1.25
    end
end

class Aliado < Persona
    def initialize
        @energia = 500
    end

    def beber!
      @energia *= 1.10
    end

    def atacar!(zombi, danio)
        zombi.recibir_danio! danio
        super
        @energia *= 0.95
    end
end