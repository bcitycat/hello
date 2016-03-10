	#ELso szakasz, melyben mindket felkaru rablonak generalunk par kezdeti erteket es ezek alapjan arazzuk oket
	#Jelen esetben 10 jatekot generalunk, melyek [0;1] es [0.5;1.5] intervallumokon vesznek majd fel ertekeket


	rm(list = ls())

	Hanyadik_Jatek <- 10

	Rablo_01 <- sum(runif(Hanyadik_Jatek,0,1))		/Hanyadik_Jatek
	Rablo_02 <- sum(runif(Hanyadik_Jatek,0.5,1.5))	/Hanyadik_Jatek

	# Eloszor
	Jatek_Kifizetese <- 0
	Ossz_Nyeremeny   <- 0


	# Frissitjuk a rablok ertekeit




	Utolso_frissites <-10

	for (hanyadik_Frissites in 1:Utolso_frissites) {

		Hanyadik_Jatek <- Hanyadik_Jatek+1

		Gener_Rablo01 <- runif(1,0,1)
		Gener_Rablo02 <- runif(1,0.5,1.5)


		Rablo_01 <- (Rablo_01/Hanyadik_Jatek)*(Hanyadik_Jatek-1)+Gener_Rablo01/Hanyadik_Jatek
		Rablo_02 <- (Rablo_02/Hanyadik_Jatek)*(Hanyadik_Jatek-1)+Gener_Rablo02/Hanyadik_Jatek

 		Rablok <- Rablo_01
 		Rablok[2] <- Rablo_02

		Nyeremeny_Sorrend 	<- sort(Rablok, decreasing = T)
		Jatek_Kifizetese	<- Nyeremeny_Sorrend[1]
		Ossz_Nyeremeny 		<- Ossz_Nyeremeny+Jatek_Kifizetese
	}


	Rablo_01
	Rablo_02
	Rablok
	Nyeremeny_Sorrend
	Jatek_Kifizetese
	Ossz_Nyeremeny
