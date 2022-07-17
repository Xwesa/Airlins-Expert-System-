%Countries
country(saudiArabia).
country(emirate).
country(qatar).
country(bahrain).
country(jordan).
country(egypt).
country(kuwait).

%Companies' names
airline(flyNas).
airline(adele).
airline(saudiِaAirline).
airline(flydubai).
airline(emirates).
airline(etihadAirways).
airline(qatarAirline).
airline(kuwaitAirways).
airline(gulfAir).
airline(royalJordanian).
airline(airCairo).

%companies names with the esteblished country
airlineLocation(flyNas,saudiArabia).
airlineLocation(adele,saudiArabia).
airlineLocation(saudiِaAirline,saudiArabia).


airlineLocation(flydubai,emirate).
airlineLocation(emirates,emirate).
airlineLocation(etihadAirways,emirate).

airlineLocation(qatarAirline,qatar).

airlineLocation(kuwaitAirways,kuwait).

airlineLocation(gulfAir,bahrain).

airlineLocation(royalJordanian,jordan).

airlineLocation(airCairo,egypt).



%services provided by each airline company
flightAmenities(flyNas,availabileWifi).
flightAmenities(flyNas,setbackScreen).
flightAmenities(flyNas,aPrayerArea).

flightAmenities(adele,availabileWifi).
flightAmenities(adele,aPrayerArea).

flightAmenities(saudiِaAirline,availabileWifi).
flightAmenities(saudiِaAirline,setbackScreen).
flightAmenities(saudiِaAirline,aPrayerArea).
flightAmenities(saudiِaAirline,complimentaryMeal).
flightAmenities(saudiِaAirline,freeBlanket).

flightAmenities(qatarAirline,availabileWifi).
flightAmenities(qatarAirline,aPrayerArea).
flightAmenities(qatarAirline,complimentaryMeal).
flightAmenities(qatarAirline,personaltelevisions ).

flightAmenities(royalJordanian,availabileWifi).
flightAmenities(royalJordanian,aPrayerArea).
flightAmenities(royalJordanian,complimentaryMeal).
flightAmenities(royalJordanian,personaltelevisions ).

flightAmenities(flydubai,availabileWifi).
flightAmenities(flydubai,aPrayerArea).
flightAmenities(flydubai,complimentaryMeal).
flightAmenities(flydubai,personaltelevisions ).

flightAmenities(airCairo,availabileWifi).
flightAmenities(airCairo,aPrayerArea).
flightAmenities(airCairo,complimentaryMeal).
flightAmenities(airCairo,personaltelevisions ).

flightAmenities(emirates,availabileWifi).
flightAmenities(emirates,setbackScreen).
flightAmenities(emirates,aPrayerArea).

flightAmenities(etihadAirways,availabileWifi).
flightAmenities(etihadAirways,aPrayerArea).

flightAmenities(kuwaitAirways,availabileWifi).
flightAmenities(kuwaitAirways,setbackScreen).
flightAmenities(kuwaitAirways,aPrayerArea).
flightAmenities(kuwaitAirways,complimentaryMeal).
flightAmenities(kuwaitAirways,freeBlanket).

aircraftCabin(saudiِaAirline,firstClass).
aircraftCabin(saudiِaAirline,businessClass).
aircraftCabin(saudiِaAirline,economyClass).

aircraftCabin(flyNas,preimumClass).
aircraftCabin(flyNas,businessClass).
aircraftCabin(flyNas,economyClass).

aircraftCabin(adele,economyClass).

aircraftCabin(etihadAirways,firstClass).
aircraftCabin(etihadAirways,businessClass).
aircraftCabin(etihadAirways,economyClass).

aircraftCabin(emirates,firstClass).
aircraftCabin(emirates,businessClass).
aircraftCabin(emirates,economyClass).

aircraftCabin(flyDubai,businessClass).
aircraftCabin(flyDubai,economyClass).

aircraftCabin(kuwaitAirways,firstClass).
aircraftCabin(kuwaitAirways,businessClass).
aircraftCabin(kuwaitAirways,economyClass).

aircraftCabin(gulfAir,falconGoldClass).
aircraftCabin(gulfAir,economyClass).


aircraftCabin(qatarAirline,firstClass).
aircraftCabin(qatarAirline,businessClass).
aircraftCabin(qatarAirline,economyClass).

aircraftCabin(royalJordanian,firstClass).
aircraftCabin(royalJordanian,businessClass).
aircraftCabin(royalJordanian,economyClass).

aircraftCabin(airCairo,economyClass).
aircraftCabin(airCairo,ecoFlexClass).

offerdto(students).
offerdto(employees).

sale(students,"15%").
sale(employees,"50%").
sale(employees,"100%").


%offers provided by each airline company
offer(airline,Offerdto,Sale):-
    airline(Flight),
    sale(Offerdto,Sale),
    write("Flight "),write(Flight),
    write(" Offers "),write(Sale),
    write(" to "),write(Offerdto),nl,
    fail.

%ALL CLUNTRIES LISTED WITH THE AIRLINES' PROVIDED
countryList(Country,Airline):-
airlineLocation(Airline,Country),
    write("Conuntry "),write(Country),
    write(", has "),write(Airline),nl,fail.

%ALL CABIN LISTED IN EACH AIRLINE COMPANY
cabinList(Airline,AircraftCabin):-
aircraftCabin(Airline,AircraftCabin),
    write(Airline),write(" Airline "),
    write(", has "),write(AircraftCabin),
    write(". "),nl,fail.

%ALL SALES PROVIDED BY EACH AIRLINE COMPANY IN EACH COUNTRY
everythingsale(Country,Airline,Sale):-
    airlineLocation(Airline,Country),
    airline(Airline),
    sale(Offerdto,Sale),
    write("Country "),write(Country),
    write(", has "),write(Airline),
    write(" That Offers "),write(Sale),
    write(" to "),write(Offerdto),nl,fail.

%
flightservices(Airline,FlightAmenities):-
flightAmenities(Airline,FlightAmenities),
    write(Airline),
    write(" offers "),write(FlightAmenities),nl,fail.
%
everythingAmenities(Country,Airline,FlightAmenities):-
    airlineLocation(Airline,Country),
    airline(Airline),
    flightAmenities(Airline,FlightAmenities),
    write("Country "),write(Country),
    write(", has "),write(Airline),
    write(" That provide "),write(FlightAmenities),
    nl,fail.

everythingCabin(Country,Airline,AircraftCabin):-
    airlineLocation(Airline,Country),
    airline(Airline),
    aircraftCabin(Airline,AircraftCabin),
    write("Country "),write(Country),
    write(", has "),write(Airline),
    write(" That has "),write(AircraftCabin),nl,fail.