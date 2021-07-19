# adapted from Downey et. al (2017)
# https://journal.r-project.org/archive/2017/RJ-2017-005/RJ-2017-005.pdf

# comparing multiple languages
# the number of words in each word list should match the number of words in the glosses list
# the number of word lists should match the number of names in the languages list
# the word lists should be bound in word.lists in the same order as the names in the languages list

NVB_Abar_7_list <- c("waMQn", "taWJ", "naMQ", "oWJnoWJ", "biMQ", "ŋkʊGJŋ")

ECL_Abar_8_list <- c("waMQn", "bʊWJbaGJ", "nɪGJjaMJ", "ʊWJnoWJ", "ʊWJkweWJH", "ŋkʊGJŋ")

NEM_Ajumbu_9_list <- c("waWJŋ", "taMQH", "ɲjəGJ", "ŋʊWJ", "nWJsaWJnəGJ", "ŋWJkʊGJ")

KDC_Ajumbu_10_list <- c("waGJHnəMQ", "baMQbəGJ", "naMQnəGJ", "ŋʊWJ", "nWJsaMQnəGJ", "ŋWJkʊGJ")

ENB_BIYA_1_list <- c("waGJn", "ʊWJbaGJ", "nɪGJaMJ", "ʊWJnʊWJ", "biGJ", "ŋkʊGJŋ")

ICN_BIYA_2_list <- c("waGJn", "tjeMZ", "ʊWJjdiWJnəGJ", "ʊWJnəWJ", "bjeMQ", "ŋkʊGJŋ")

NNB_Buu_3_list <- c("waGJn", "təMZH", "naMQ", "mgbɪWJ", "nWJsʊGJn", "ŋWJkəGJŋ")

MNJ_Buu_4_list <- c("waGJn", "təMZH", "nɪGJH", "mgbɪWJH", "nWJsʊGJHn", "ŋWJkəGJŋ")

KHK_FANG_12_list <- c("waGJn", "tɪWJləGJ", "nɛGJ", "ŋməWJ", "sʊMJn", "ŋkʊGJŋ")

DPN_FANG_13_list <- c("waGJn", "bəWJbaGJ", "nɛMQ", "ŋməWJ", "sʊMJn", "ŋkʊGJŋ")

JGY_Koshin_3_list <- c("waMJɲ", "baMQ", "nəMQ", "muWJeWJɲ", "nGJseGJɲ", "feWJɲ")

TEL_Koshin_4_list <- c("waGJɲ", "tjəMQ", "ɲjəGJ", "mjwɪWJɲ", "nWJsɪMJɲ", "fəWJɲ")

KCS_Kung_3_list <- c("waMJɲ", "bɛMQH", "neMQɲ", "wuWJoWJ", "soFMJj", "fɔWJj")

NJS_Kung_4_list <- c("waGJj", "bɛMZH", "neMQj", "wʊWJəWJ", "soGJj", "fɔWJɪWJ")

NMN_Mundabli_3_list <- c("waGJɦɲ", "tɪMZH", "nɪGJ", "moWJ", "nMJsʊMJŋ", "ŋkʊMZŋ")

CEN_Mundabli_2_list <- c("waGJn", "tɪMZH", "nɪGJ", "moWJ", "nGJsʊGJHŋ", "ŋWJkʊMZHŋ")

NGT_Munken_3_list <- c("waMJn", "kjəWJləGJ", "ɲiGJ", "ʊWJnɛWJ", "bjaMQ", "ŋkʊGJŋ")

NUN_Munken_4_list <- c("waMJn", "taMQ", "naMQ", "ʊWJneWJ", "aWJtsoWJ", "ŋWJkʊGJŋ")

MCA_Ngun_3_list <- c("waMJn", "paMZH", "niGJjaMJ", "ʊWJnoWJ", "biMJ", "ŋkʊGJŋ")

KBM_Ngun_4_list <- c("waMJn", "bəWJbaGJ", "niGJjaMJ", "ʊWJnoWJ", "ʊWJkjwɪWJ", "ŋkʊGJŋ")

word.lists <- rbind(NVB_Abar_7_list, ECL_Abar_8_list, NEM_Ajumbu_9_list, KDC_Ajumbu_10_list, ENB_BIYA_1_list, ICN_BIYA_2_list, NNB_Buu_3_list, MNJ_Buu_4_list, KHK_FANG_12_list, DPN_FANG_13_list, JGY_Koshin_3_list, TEL_Koshin_4_list, KCS_Kung_3_list, NJS_Kung_4_list, NMN_Mundabli_3_list, CEN_Mundabli_2_list, NGT_Munken_3_list, NUN_Munken_4_list, MCA_Ngun_3_list, KBM_Ngun_4_list)
glosses <- colnames(word.lists) <- c("child", "father", "mother", "person", "friend", "chief")
languages <- rownames(word.lists) <- c("NVB-Abar-7", "ECL-Abar-8", "NEM-Ajumbu-9", "KDC-Ajumbu-10", "ENB-BIYA-1", "ICN-BIYA-2", "NNB-Buu-3", "MNJ-Buu-4", "KHK-FANG-12", "DPN-FANG-13", "JGY-Koshin-3", "TEL-Koshin-4", "KCS-Kung-3", "NJS-Kung-4", "NMN-Mundabli-3", "CEN-Mundabli-2", "NGT-Munken-3", "NUN-Munken-4", "MCA-Ngun-3", "KBM-Ngun-4")
word.lists
# dim empty matrices: a (ALINE scores), and n (a counter)
n <- matrix(0, nrow = length(languages), ncol = length(languages),dimnames = list(languages, languages))
a <- n
# nested loops for calculating the mean ALINE Distances for multiple languages and glosses
for(i in 1:length(glosses)){ # loop glosses
  for(j in 1:length(languages)){ # outer language loop
    for(k in 1:length(languages)){ # inner language loop
      if(j >= k){
        x <- word.lists[j, i] # first word to compare
        y <- word.lists[k, i] # second word to compare
        if( !is.na(x) & !is.na(y) ) { # skip if missing data
          a[j, k] <- a[j, k] + aline(x, y) # ALINE Distance
          n[j, k] <- n[j, k] + 1 # increment counter
        }
      }
    }
  }
}
output <- as.dist(a / n) # distance matrix composed of mean ALINE Distances
