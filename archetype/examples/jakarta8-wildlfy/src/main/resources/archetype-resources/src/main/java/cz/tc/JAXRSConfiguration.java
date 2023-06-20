package cz.tc;

import jakarta.ws.rs.ApplicationPath;
import jakarta.ws.rs.core.Application;

/**
 * Configures a JAX-RS endpoint.
 * 
 * @see https://github.com/AdamBien/microprofile-essentials-archetype/blob/master/src/main/resources/archetype-resources/src/main/java/com/airhacks/JAXRSConfiguration.java
 */
@ApplicationPath("resources")
public class JAXRSConfiguration extends Application {

}