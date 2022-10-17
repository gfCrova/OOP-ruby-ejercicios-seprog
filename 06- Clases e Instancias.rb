
class Zombi
    def initialize(inicial)
        @salud = inicial
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
    
    def recibir_danio!(puntos)
        @salud = [@salud-=puntos*2,0].max
    end

    def sin_vida?
        @salud == 0
    end
end

bouba = Zombi.new
kiki = Zombi.new


class SuperZombi
    def initialize(inicial)
        @salud = inicial
    end

    def salud
        @salud
    end

    def sabe_correr?
        true
    end

    def gritar
        "¡agrrrg!"
    end
    
    def recibir_danio!(puntos)
        @salud = [@salud-=puntos*3,0].max
    end

    def sin_vida?
        @salud == 0
    end
    
    def regenerarse!
        @salud = 100
    end
end

class Sobreviviente
    def initialize
        @energia = 1000
    end

    def energia
        @energia
    end
    
    def atacar!(zombie, danio)
        zombie.recibir_danio!(danio)
    end
    
    def ataque_masivo!(zombis)
        zombis.each { |zombi| atacar!(zombi, 15) }
        @energia = @energia / 2  
    end
    
    def beber!
        @energia += 1000/4
    end
end

class Aliado 

    def initialize
        @energia = 500
    end

    def energia
        @energia
    end

    def atacar!(zombie, danio)
        zombie.recibir_danio!(danio)
      @energia -= @energia * 5 / 100
    end
    
    def ataque_masivo!(zombis)
        zombis.each { |zombi| atacar!(zombi, 20) }
        @energia = @energia / 2
    end

    def beber!
        @energia += @energia / 10
    end
end