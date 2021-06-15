import pandas

wordlists = pandas.read_csv("Query_result_20210301.csv") 
entries = wordlists.to_dict(orient='records')
newTable = { }

for entry in entries:
	conceptID = entry["concept_id"]
	concept = entry["concept"]
	speaker = entry["speaker_name"]
	word = entry["word"]
	#print(conceptID,concept,speaker,word)
	
	if conceptID in newTable:
		newEntry = newTable[conceptID]
		newEntry[speaker] = word
		
	else:
		newTable[conceptID] = {
								"conceptID" : conceptID,
								"concept" : concept,
								speaker : word,
								}
	
speakerIDs = [
				"ABS",
				"AGA",
				"AOM",
				"APB",
				"BKB",
				"BNM",
				"DNM",
				"DPJ",
				"ENB",
				"ICN",
				"KCY",
				"KDV",
				"KEM",
				"KFK",
				"KJS",
				"KMN",
				"LFN",
				"MRY",
				"NAC",
				"NEA",
				"NIN",
				"NMA",
				"NVI",
				"TNT",
				"WCA",
				"ZKG"
				]	
		

outputFile = open("transformedWordlist.tsv", "w")

outputFile.write("ConceptID" + "\t" + "Concept")
for speakerID in speakerIDs:
	outputFile.write("\t" + speakerID)
outputFile.write("\n")
						
for newEntryID in newTable:

	newEntry =  newTable[newEntryID]

	conceptID = newEntry["conceptID"]
	concept = newEntry["concept"]
	
	output = str(conceptID) + "\t" + concept

	for speakerID in speakerIDs:
	
		if speakerID in newEntry:
			word = newEntry[speakerID]
			
		else:
			word = ""

		output = output + "\t" + str(word)
		
	outputFile.write(output + "\n")