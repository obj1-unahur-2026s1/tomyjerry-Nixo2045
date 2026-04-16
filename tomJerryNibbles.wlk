object tom {

    var energia = 50 

    method velocidadMaxima() = 5 + energia/10
    
    method comerAlRaton(unRaton) {
        energia += 12 + unRaton.peso()
    }

    method correr(metros) {
        energia -= metros / 2
    }

    method puedeCazar(distancia) {
       return distancia/2 <= energia 
    }

    method cazar (unRaton,distancia){
        if (self.puedeCazar(distancia)) {
            self.correr(distancia)
            self.comerAlRaton(unRaton)
        }
    }

}

object jerry {

    var edad = 2

    method peso() = edad * 20

    method cumpleAnos() {
        edad += 1
    }
}

object nibbles {

    method peso() = 35

}

// Inventar otro ratón

object perez  {
    method peso() = 50
}