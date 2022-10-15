
module Pepita
    @energia = 1000

    def self.energia
        @energia
    end
    
    def self.volar_en_circulos!
        @energia -= 10
    end

    def self.comer_alpiste!(gramos)
        @energia += gramos * 15
    end
    
    def self.debil?          # los mensajes que devuelven booleanos 
        @energia < 100       # terminan con un ?
    end

    def self.feliz?
        @energia > 1000
    end

    def self.hacer_lo_que_quiera!
        if self.debil?
            self.comer_alpiste!(10)
        elsif self.feliz?
            5.times { self.volar_en_circulos! }
        else
            3.times { self.volar_en_circulos! }
        end            
    end
end


module Pepo
    @energia = 1000

    def self.energia
        @energia
    end

    def self.volar_en_circulos!
        if @energia > 1100
            @energia -= 15
        else
            @energia -= 5
        end
    end
    
    def self.comer_alpiste!(gramos)
        @energia += gramos / 2
    end
    
    def self.hacer_lo_que_quiera!
        self.comer_alpiste!(120)
    end
end


module Pachorra
    def self.ave=(un_ave)
        @ave = un_ave
    end
        
    def self.entrenar_ave!
        10.times{@ave.volar_en_circulos!}
        @ave.comer_alpiste!(30)
        5.times{@ave.volar_en_circulos!}
        @ave.hacer_lo_que_quiera!
    end
end


module Norita
    @energia = 500
    
    def self.energia
        @energia
    end
        
    def self.volar_en_circulos!
        @energia -= 30
    end
    
    def self.comer_alpiste!(gramos)
        @energia -= gramos
    end 

    def self.hacer_lo_que_quiera!
    end    
end

module Emilce
    def self.entrenar_ave!
        53.times { @ave.volar_en_circulos! }
        @ave.comer_alpiste! 8
    end
end

norita_puede_entrenar_con_pachorra = false
norita_puede_entrenar_con_emilce = true
pepita_puede_entrenar_con_pachorra = true
pepita_puede_entrenar_con_emilce = true
pepo_puede_entrenar_con_pachorra = true