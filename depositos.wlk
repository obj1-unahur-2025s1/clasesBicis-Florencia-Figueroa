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
        if(listaDeBicis.any({b => listaDeBicis.occurrencesOf(b) > 1})){  //para chequear si hay bici repetida --> corta la ejecucion 
            self.error("Hay bicis duplicadas dentro del la lista de las nuevas bicis")
        }

        bicis.addAll(listaDeBicis)
    }
}