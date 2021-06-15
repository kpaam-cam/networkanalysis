Query 1: Join all lists


SET SQL_BIG_SELECTS=1;

select Concept_list.OrderingID, Concept_list.Concept, 


Wordlist_ABAR.`NVB-Abar-7`,  Wordlist_ABAR.`NVB-Abar-7`,
Wordlist_AJUMBU.`NEM-Ajumbu-9`,  Wordlist_AJUMBU.`KDC-Ajumbu-10`,
Wordlist_BIYA.`ENB-BIYA-1`, Wordlist_BIYA.`ICN-BIYA-2`,
Wordlist_BUU.`NNB-Buu-3`, Wordlist_BUU.`MNJ-Buu-4`,
Wordlist_FANG.`KHK-FANG-12`, Wordlist_FANG.`DPN-FANG-13`,
Wordlist_KOSHIN.`JGY-Koshin-3`, Wordlist_KOSHIN.`TEL-Koshin-4`,
Wordlist_KUNG.`KCS-Kung-3`, Wordlist_KUNG.`NJS-Kung-4`,
Wordlist_MASHI.`KFK-Mashi-1`, Wordlist_MASHI.`BKB-Mashi-2`, 
Wordlist_MISSONG.`ABS-Missong-1`, Wordlist_MISSONG.`AGA-Missong-2`,
/* These are all empty right now
Wordlist_MUMFU.`ABP-Mumfu-1`, Wordlist_MUMFU.`DNM-Mumfu-2`,
Wordlist_MUNDABLI.`NMN-Mundabli-3`, Wordlist_MUNDABLI.`CEN-Mundabli-2`,
Wordlist_MUNKEN.`NGT-Munken-3`, Wordlist_MUNKEN.`NUN-Munken-4`,
*/
Wordlist_NGUN.`MCA-Ngun-3`, Wordlist_NGUN.`KBM-Ngun-4`

from Concept_list

inner join Wordlist_ABAR
	on Concept_list.OrderingID=Wordlist_ABAR.Concept
inner join Wordlist_AJUMBU
	on Concept_list.OrderingID=Wordlist_AJUMBU.Concept
inner join Wordlist_BIYA
	on Concept_list.OrderingID=Wordlist_BIYA.Concept
inner join Wordlist_BUU
	on Concept_list.OrderingID=Wordlist_BUU.Concept
inner join Wordlist_FANG
	on Concept_list.OrderingID=Wordlist_FANG.Concept
inner join Wordlist_KOSHIN
	on Concept_list.OrderingID=Wordlist_KOSHIN.Concept 
inner join Wordlist_KUNG
	on Concept_list.OrderingID=Wordlist_KUNG.Concept
inner join Wordlist_MASHI
	on Concept_list.OrderingID=Wordlist_MASHI.Concept
/* These are all empty right now
inner join Wordlist_MISSONG
	on Concept_list.OrderingID=Wordlist_MISSONG.Concept
inner join Wordlist_MUMFU
	on Concept_list.OrderingID=Wordlist_MUMFU.Concept
		*/
inner join Wordlist_MUNDABLI
	on Concept_list.OrderingID=Wordlist_MUNDABLI.Concept
inner join Wordlist_MUNKEN
	on Concept_list.OrderingID=Wordlist_MUNKEN.Concept
inner join Wordlist_NGUN
	on Concept_list.OrderingID=Wordlist_NGUN.Concept

order by Concept_list.OrderingID;



Query 2: Join all lists and store in table since otherwise limitations in iPage do not allow export (or online searching)


SET SQL_BIG_SELECTS=1;

create table parallel_lists as


select Concept_list.OrderingID, Concept_list.Concept, 


Wordlist_ABAR.`NVB-Abar-7`,  Wordlist_ABAR.`ECL-Abar-8`,
Wordlist_AJUMBU.`NEM-Ajumbu-9`,  Wordlist_AJUMBU.`KDC-Ajumbu-10`,
Wordlist_BIYA.`ENB-BIYA-1`, Wordlist_BIYA.`ICN-BIYA-2`,
Wordlist_BUU.`NNB-Buu-3`, Wordlist_BUU.`MNJ-Buu-4`,
Wordlist_FANG.`KHK-FANG-12`, Wordlist_FANG.`DPN-FANG-13`,
Wordlist_KOSHIN.`JGY-Koshin-3`, Wordlist_KOSHIN.`TEL-Koshin-4`,
Wordlist_KUNG.`KCS-Kung-3`, Wordlist_KUNG.`NJS-Kung-4`,
/*
Wordlist_MASHI.`KFK-Mashi-1`, Wordlist_MASHI.`BKB-Mashi-2`, 
Wordlist_MISSONG.`ABS-Missong-1`, Wordlist_MISSONG.`AGA-Missong-2`,
Wordlist_MUMFU.`ABP-Mumfu-1`, Wordlist_MUMFU.`DNM-Mumfu-2`,
*/
Wordlist_MUNDABLI.`NMN-Mundabli-3`, Wordlist_MUNDABLI.`CEN-Mundabli-2`,
Wordlist_MUNKEN.`NGT-Munken-3`, Wordlist_MUNKEN.`NUN-Munken-4`,
Wordlist_NGUN.`MCA-Ngun-3`, Wordlist_NGUN.`KBM-Ngun-4`

from Concept_list

inner join Wordlist_ABAR
	on Concept_list.OrderingID=Wordlist_ABAR.Concept
inner join Wordlist_AJUMBU
	on Concept_list.OrderingID=Wordlist_AJUMBU.Concept
inner join Wordlist_BIYA
	on Concept_list.OrderingID=Wordlist_BIYA.Concept
inner join Wordlist_BUU
	on Concept_list.OrderingID=Wordlist_BUU.Concept
inner join Wordlist_FANG
	on Concept_list.OrderingID=Wordlist_FANG.Concept
inner join Wordlist_KOSHIN
	on Concept_list.OrderingID=Wordlist_KOSHIN.Concept 
inner join Wordlist_KUNG
	on Concept_list.OrderingID=Wordlist_KUNG.Concept
/*
inner join Wordlist_MASHI
	on Concept_list.OrderingID=Wordlist_MASHI.Concept
inner join Wordlist_MISSONG
	on Concept_list.OrderingID=Wordlist_MISSONG.Concept
inner join Wordlist_MUMFU
	on Concept_list.OrderingID=Wordlist_MUMFU.Concept
*/
inner join Wordlist_MUNDABLI
	on Concept_list.OrderingID=Wordlist_MUNDABLI.Concept
inner join Wordlist_MUNKEN
	on Concept_list.OrderingID=Wordlist_MUNKEN.Concept
inner join Wordlist_NGUN
	on Concept_list.OrderingID=Wordlist_NGUN.Concept

order by Concept_list.OrderingID;



