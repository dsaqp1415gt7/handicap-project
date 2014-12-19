package edu.upc.eetac.dsa.dsaqt1415g7.handicap.api;

import org.glassfish.jersey.linking.DeclarativeLinkingFeature;
import org.glassfish.jersey.server.ResourceConfig;

public class HandicapApplication extends ResourceConfig{
	public HandicapApplication(){
		super();
		register (DeclarativeLinkingFeature.class);
	}
}
