import bicis.*

//2 - Depositos

class Deposito{
    const bicis = []

    //Excepciones 
    method agregarBicis(listaDeBicis){
        if(listaDeBicis.any({b => bicis.contains(b)})){
            //self.error("No se puede agregar dos veces una bici al deposito") --> corta la ejecucion 
            throw new Exception(message = "No se puede agregar dos veces una bici al deposito")
        }

        //El occurrencesOf en {} me devuelve un numero, y en [] cualquier valor
        //para chequear si hay bici repetida x cantidad de veces --> corta la ejecucion 
        if(listaDeBicis.any({b => listaDeBicis.occurrencesOf(b) > 1})){  
            self.error("Hay bicis duplicadas dentro del la lista de las nuevas bicis")
        }

        bicis.addAll(listaDeBicis)
    }
    
    method bicisRapidas() = bicis.filter({b => b.velocidadCrucero() > 25})
    method coleccionDeMarcas() = bicis.map({b => b.marca()}).asSet()
    method esNocturno() = bicis.all({b => b.tieneLuz()})
    method tieneBiciQueLleve(kilos) = bicis.any({b => b.carga() > kilos})

    // 3- Mas sobre depositos 
    method marcaDeBiciMasRapida() = bicis.max({b => b.velocidadCrucero()}).marca()
    method cargaDeBicisLargas() = bicis.filter({b => b.largo() > 170}).sum({b => b.carga()})
    method bicisSinAccesorios() = bicis.count({b => b.accesorios().size() < 0})
}