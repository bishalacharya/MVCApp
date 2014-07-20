package com.bishal.app.util;

import java.util.ArrayList;
import java.util.List;

public class Countries {
	static List<String> countryList = new ArrayList<String>();
	static List<String> religion = new ArrayList<String>();
	static List<Integer> ageList = new ArrayList<Integer>();
	
	private static Countries instance = null;

	public static Countries getInstance() {
		if (instance == null) {
			instance = new Countries();
			instantiateCountryList();
			instantiateReligion();
			instantiateAgeList();
		}
		return instance;
	}

	private Countries() {
	}

	public static List<Integer> getAgeList(){
		return ageList;
	}
	public static List<String> getCountryList(){
		return countryList;
	}
	
	private static void instantiateAgeList(){
		for(int i =18; i<= 100; i++){
			ageList.add(i);
		}
	}
	
	private static void instantiateCountryList(){
		countryList.add("USA");
		countryList.add("Afghanistan");
		countryList.add("Albania");
		countryList.add("Algeria");
		countryList.add("Andorra");
		countryList.add("Angola");
		countryList.add("Anguilla");
		countryList.add("Antigua");
		countryList.add("Australia");
		countryList.add("Bangladesh");
		countryList.add("Bhutan");
		countryList.add("Canada");
		countryList.add("France");
		countryList.add("Germany");
		countryList.add("India");
		countryList.add("Pakistan");
		countryList.add("Japan");
		countryList.add("Mozambique");
		countryList.add("Nepal");
		countryList.add("Russia");
		countryList.add("UAE");
		countryList.add("UK");
		countryList.add("South Korea");
		countryList.add("Zimbabwe");
		
	}
	
	private static void instantiateReligion(){
		religion.add("Hinduism");
		religion.add("Christianity");
		religion.add("Islam");
		religion.add("Sikh");
		religion.add("Judism");
		religion.add("Buddhism");
		religion.add("Athiesm");
		religion.add("Other");
	}
	
	public static List<String> getReligion(){
		return religion;
	}
}
