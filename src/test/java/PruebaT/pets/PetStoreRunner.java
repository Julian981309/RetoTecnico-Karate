package PruebaT.pets;

import com.intuit.karate.junit5.Karate;

public class PetStoreRunner {

    @Karate.Test
    Karate testPetstore(){
        return Karate.run( "petstore.feature").relativeTo(getClass());
    }
}
