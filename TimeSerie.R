# blah 
rm(list= ls())

setwd("C:/Users/Alistair/Documents/GitHub/ForecastingII/")

library(readxl)
library(readr)
library(dplyr)

################################# IMPORT DATA ########################################

addresses <- read_excel("data/addresses2022-01-15.xlsx")

basedata <- read_csv2("data/base_data2022-01-15.csv")
base_data = basedata

Namesdefinitions <- read_excel("data/Names definitions.xlsx")

products <- read_excel("data/product_complete2022-01-15.xlsx")
product_complete = products
restaurants <- read_excel("data/restaurants2022-01-15.xlsx")

DailyCovidCase <- read_excel("data/DailyCovidCase.xlsx")

############################## AS FACTOR #################################################

product_complete$PROD_catID <- as.factor(product_complete$PROD_catID)
product_complete$PROD_catTitle <- as.factor(product_complete$PROD_catTitle)

## RENAMING THE PRODUCTS ID's

# Categories for FOOD
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "-1" = "reimboursement")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "232" = "PANINI", "1000" = "PANINI", "1015" = "PANINI", "1068" = "PANINI", "1158" = "PANINI", "1202" = "PANINI", "1211" = "PANINI", "1262" = "PANINI", "1503" = "PANINI", "1589" = "PANINI", "1656" = "PANINI", "1695" = "PANINI", "1750" = "PANINI", "1771" = "PANINI", "1781" = "PANINI", "1799" = "PANINI", "1812" = "PANINI", "1845" = "PANINI", "224" = "PANINI", "225" = "PANINI", "226" = "PANINI", "227" = "PANINI", "228" = "PANINI", "2384" = "PANINI", "2569" = "PANINI", "2628" = "PANINI", "2639" = "PANINI", "2640" = "PANINI", "2684" = "PANINI", "2803" = "PANINI", "2865" = "PANINI", "2873" = "PANINI", "290" = "PANINI", "3014" = "PANINI", "3102" = "PANINI", "3111" = "PANINI", "3358" = "PANINI", "3375" = "PANINI", "3393" = "PANINI", "3399" = "PANINI", "3422" = "PANINI", "3423" = "PANINI", "3470" = "PANINI", "3490" = "PANINI", "3679" = "PANINI", "3686" = "PANINI", "3922" = "PANINI", "4039" = "PANINI", "521" = "PANINI", "523" = "PANINI", "55" = "PANINI", "621" = "PANINI", "719" = "PANINI", "957" = "PANINI", "958" = "PANINI", "993" = "PANINI")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1018" = "KEBAB", "1157" = "KEBAB", "1274" = "KEBAB", "1276" = "KEBAB", "1861" = "KEBAB", "2420" = "KEBAB", "295" = "KEBAB", "3024" = "KEBAB", "3056" = "KEBAB", "3152" = "KEBAB", "3276" = "KEBAB", "3278" = "KEBAB", "368" = "KEBAB", "50" = "KEBAB", "564" = "KEBAB")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "234" = "SALAD", "3207" = "SALAD", "1024" = "SALAD", "1061" = "SALAD", "1094" = "SALAD", "1114" = "SALAD", "1149" = "SALAD", "1173" = "SALAD", "1204" = "SALAD", "1209" = "SALAD", "1248" = "SALAD", "1253" = "SALAD", "1354" = "SALAD", "1381" = "SALAD", "144" = "SALAD", "1444" = "SALAD", "1458" = "SALAD", "1500" = "SALAD", "1512" = "SALAD", "1524" = "SALAD", "1538" = "SALAD", "1572" = "SALAD", "1590" = "SALAD", "1622" = "SALAD", "1636" = "SALAD", "1679" = "SALAD", "1684" = "SALAD", "1700" = "SALAD", "1748" = "SALAD", "1815" = "SALAD", "182" = "SALAD", "1820" = "SALAD", "1825" = "SALAD", "1830" = "SALAD", "1836" = "SALAD", "1890" = "SALAD", "1983" = "SALAD", "2013" = "SALAD", "2239" = "SALAD", "2370" = "SALAD", "2386" = "SALAD", "2437" = "SALAD", "2466" = "SALAD", "250" = "SALAD", "2637" = "SALAD", "2688" = "SALAD", "2717" = "SALAD", "2729" = "SALAD", "2746" = "SALAD", "2770" = "SALAD", "2805" = "SALAD", "2831" = "SALAD", "2944" = "SALAD", "3057" = "SALAD", "3085" = "SALAD", "3183" = "SALAD", "3246" = "SALAD", "3248" = "SALAD", "3250" = "SALAD", "3254" = "SALAD", "3265" = "SALAD", "3331" = "SALAD", "3402" = "SALAD", "342" = "SALAD", "3683" = "SALAD", "3846" = "SALAD", "3955" = "SALAD", "406" = "SALAD", "463" = "SALAD", "56" = "SALAD", "606" = "SALAD", "607" = "SALAD", "727" = "SALAD", "841" = "SALAD", "87" = "SALAD", "879" = "SALAD", "932" = "SALAD", "959" = "SALAD")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "3681" = "PIZZA", "1029" = "PIZZA", "1074" = "PIZZA",  "1156" = "PIZZA", "1177" = "PIZZA", "1201" = "PIZZA", "1254" = "PIZZA", "1256" = "PIZZA", "1257" = "PIZZA", "1288" = "PIZZA", "1289" = "PIZZA", "1358" = "PIZZA", "1359" = "PIZZA", "1384" = "PIZZA", "1397" = "PIZZA", "1410" = "PIZZA", "1438" = "PIZZA", "1464" = "PIZZA", "1525" = "PIZZA", "1623" = "PIZZA", "1643" = "PIZZA", "1646" = "PIZZA", "1648" = "PIZZA", "1649" = "PIZZA", "1662" = "PIZZA", "1663" = "PIZZA", "1681" = "PIZZA", "1706" = "PIZZA", "1707" = "PIZZA", "1716" = "PIZZA", "1757" = "PIZZA", "1758" = "PIZZA", "1761" = "PIZZA", "1803" = "PIZZA", "1839" = "PIZZA", "1843" = "PIZZA", "1874" = "PIZZA", "1875" = "PIZZA", "1913" = "PIZZA", "1916" = "PIZZA", "1917" = "PIZZA", "1928" = "PIZZA", "1929" = "PIZZA", "1964" = "PIZZA", "2002" = "PIZZA", "2022" = "PIZZA", "2023" = "PIZZA", "2385" = "PIZZA", "2459" = "PIZZA", "257" = "PIZZA", "2570" = "PIZZA", "2571" = "PIZZA", "2572" = "PIZZA", "2573" = "PIZZA", "2574" = "PIZZA", "262" = "PIZZA", "2678" = "PIZZA", "2679" = "PIZZA", "271" = "PIZZA", "2716" = "PIZZA", "2797" = "PIZZA", "2810" = "PIZZA", "2811" = "PIZZA", "2823" = "PIZZA", "2830" = "PIZZA", "289" = "PIZZA", "291" = "PIZZA", "2915" = "PIZZA", "292" = "PIZZA", "293" = "PIZZA", "2934" = "PIZZA", "2947" = "PIZZA", "297" = "PIZZA", "298" = "PIZZA", "3021" = "PIZZA", "3076" = "PIZZA", "3077" = "PIZZA", "3142" = "PIZZA", "3150" = "PIZZA", "3191" = "PIZZA", "3199" = "PIZZA", "3231" = "PIZZA", "3237" = "PIZZA", "3274" = "PIZZA", "3292" = "PIZZA", "3316" = "PIZZA", "3398" = "PIZZA", "3404" = "PIZZA", "3420" = "PIZZA", "3487" = "PIZZA", "3489" = "PIZZA", "350" = "PIZZA", "351" = "PIZZA", "3677" = "PIZZA", "3678" = "PIZZA", "3685" = "PIZZA", "3751" = "PIZZA", "3775" = "PIZZA", "3780" = "PIZZA", "3842" = "PIZZA", "3856" = "PIZZA", "3859" = "PIZZA", "3935" = "PIZZA", "3995" = "PIZZA", "4004" = "PIZZA", "4013" = "PIZZA", "4014" = "PIZZA", "4017" = "PIZZA", "421" = "PIZZA", "429" = "PIZZA", "53" = "PIZZA", "54" = "PIZZA", "619" = "PIZZA", "625" = "PIZZA", "635" = "PIZZA", "664" = "PIZZA", "665" = "PIZZA", "674" = "PIZZA", "717" = "PIZZA", "725" = "PIZZA", "733" = "PIZZA", "734" = "PIZZA", "758" = "PIZZA", "763" = "PIZZA", "787" = "PIZZA", "80" = "PIZZA", "81" = "PIZZA", "847" = "PIZZA", "848" = "PIZZA", "855" = "PIZZA", "883" = "PIZZA", "884" = "PIZZA", "885" = "PIZZA", "886" = "PIZZA", "887" = "PIZZA", "89" = "PIZZA", "925" = "PIZZA", "946" = "PIZZA", "956" = "PIZZA")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "255" = "BURGER", "362" = "BURGER", "969" = "BURGER", "1059" = "BURGER", "1083" = "BURGER", "1084" = "BURGER", "1085" = "BURGER", "1096" = "BURGER", "1106" = "BURGER", "1203" = "BURGER", "1349" = "BURGER", "1383" = "BURGER", "1434" = "BURGER", "1490" = "BURGER", "1494" = "BURGER", "1495" = "BURGER", "1496" = "BURGER", "1497" = "BURGER", "1507" = "BURGER", "1508" = "BURGER", "1510" = "BURGER", "1523" = "BURGER", "1531" = "BURGER", "1533" = "BURGER", "1534" = "BURGER", "1536" = "BURGER", "1546" = "BURGER", "1573" = "BURGER", "1637" = "BURGER", "1638" = "BURGER", "1639" = "BURGER", "1640" = "BURGER", "1641" = "BURGER", "1642" = "BURGER", "1790" = "BURGER", "1796" = "BURGER", "1886" = "BURGER", "1944" = "BURGER", "1945" = "BURGER", "1946" = "BURGER", "1950" = "BURGER", "1975" = "BURGER", "2008" = "BURGER", "2015" = "BURGER", "2016" = "BURGER", "2237" = "BURGER", "2238" = "BURGER", "229" = "BURGER", "2483" = "BURGER", "251" = "BURGER", "2514" = "BURGER", "252" = "BURGER", "253" = "BURGER", "2622" = "BURGER", "284" = "BURGER", "2840" = "BURGER", "2850" = "BURGER", "2872" = "BURGER", "2935" = "BURGER", "294" = "BURGER", "2998" = "BURGER", "3029" = "BURGER", "3030" = "BURGER", "3031" = "BURGER", "3038" = "BURGER", "3039" = "BURGER", "3051" = "BURGER", "3052" = "BURGER", "3062" = "BURGER", "3090" = "BURGER", "3096" = "BURGER", "3147" = "BURGER", "3151" = "BURGER", "3208" = "BURGER", "3209" = "BURGER", "3230" = "BURGER", "3332" = "BURGER", "3357" = "BURGER", "3419" = "BURGER", "3421" = "BURGER", "349" = "BURGER", "3500" = "BURGER", "3571" = "BURGER", "3591" = "BURGER", "3718" = "BURGER", "3721" = "BURGER", "3747" = "BURGER", "3810" = "BURGER", "3825" = "BURGER", "3850" = "BURGER", "3883" = "BURGER", "3968" = "BURGER", "4047" = "BURGER", "648" = "BURGER", "697" = "BURGER", "891" = "BURGER", "951" = "BURGER")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "231" = "SANDWICH", "1060" = "SANDWICH", "1176" = "SANDWICH", "1207" = "SANDWICH", "1217" = "SANDWICH", "1362" = "SANDWICH", "1363" = "SANDWICH", "1398" = "SANDWICH", "1664" = "SANDWICH", "1685" = "SANDWICH", "1694" = "SANDWICH", "1741" = "SANDWICH", "1749" = "SANDWICH", "1751" = "SANDWICH", "1768" = "SANDWICH", "1791" = "SANDWICH", "1798" = "SANDWICH", "1976" = "SANDWICH", "230" = "SANDWICH", "2383" = "SANDWICH", "2392" = "SANDWICH", "2438" = "SANDWICH", "2505" = "SANDWICH", "2606" = "SANDWICH", "2721" = "SANDWICH", "2722" = "SANDWICH", "2866" = "SANDWICH", "2871" = "SANDWICH", "2938" = "SANDWICH", "2945" = "SANDWICH", "2992" = "SANDWICH", "3040" = "SANDWICH", "3058" = "SANDWICH", "3092" = "SANDWICH", "3192" = "SANDWICH", "3198" = "SANDWICH", "3247" = "SANDWICH", "330" = "SANDWICH", "3368" = "SANDWICH", "3432" = "SANDWICH", "3680" = "SANDWICH", "641" = "SANDWICH", "806" = "SANDWICH", "926" = "SANDWICH")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1405" = "PRIMI", "141" = "PRIMI", "1071" = "PRIMI", "1110" = "PRIMI", "1215" = "PRIMI", "1244" = "PRIMI", "1443" = "PRIMI", "1520" = "PRIMI", "1627" = "PRIMI", "1635" = "PRIMI", "1668" = "PRIMI", "1672" = "PRIMI", "1682" = "PRIMI", "1701" = "PRIMI", "174" = "PRIMI", "1755" = "PRIMI", "1785" = "PRIMI", "1896" = "PRIMI", "1899" = "PRIMI", "1911" = "PRIMI", "1936" = "PRIMI", "1958" = "PRIMI", "1962" = "PRIMI", "2401" = "PRIMI", "2458" = "PRIMI", "249" = "PRIMI", "2618" = "PRIMI", "2682" = "PRIMI", "2707" = "PRIMI", "2726" = "PRIMI", "2789" = "PRIMI", "2808" = "PRIMI", "2824" = "PRIMI", "2851" = "PRIMI", "2949" = "PRIMI", "3154" = "PRIMI", "3236" = "PRIMI", "3256" = "PRIMI", "3407" = "PRIMI", "3430" = "PRIMI", "3454" = "PRIMI", "3848" = "PRIMI", "3901" = "PRIMI", "3932" = "PRIMI", "3952" = "PRIMI", "458" = "PRIMI", "761" = "PRIMI", "827" = "PRIMI", "880" = "PRIMI", "906" = "PRIMI", "908" = "PRIMI", "974" = "PRIMI")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1109" = "ANTIP", "118" = "ANTIP", "1214" = "ANTIP", "1243" = "ANTIP", "1367" = "ANTIP", "1380" = "ANTIP", "1442" = "ANTIP", "1456" = "ANTIP", "1457" = "ANTIP", "1465" = "ANTIP", "1466" = "ANTIP", "1467" = "ANTIP", "1491" = "ANTIP", "1518" = "ANTIP", "1519" = "ANTIP", "1532" = "ANTIP", "1552" = "ANTIP", "1626" = "ANTIP", "1671" = "ANTIP", "1699" = "ANTIP", "173" = "ANTIP", "1747" = "ANTIP", "1784" = "ANTIP", "181" = "ANTIP", "1895" = "ANTIP", "1898" = "ANTIP", "1910" = "ANTIP", "1934" = "ANTIP", "1957" = "ANTIP", "1961" = "ANTIP", "1978" = "ANTIP", "1980" = "ANTIP", "2026" = "ANTIP", "2400" = "ANTIP", "2457" = "ANTIP", "2520" = "ANTIP", "2547" = "ANTIP", "2646" = "ANTIP", "2680" = "ANTIP", "2689" = "ANTIP", "2725" = "ANTIP", "2731" = "ANTIP", "2745" = "ANTIP", "2769" = "ANTIP", "2788" = "ANTIP", "2822" = "ANTIP", "2848" = "ANTIP", "2862" = "ANTIP", "2948" = "ANTIP", "2965" = "ANTIP", "3084" = "ANTIP", "3203" = "ANTIP", "3240" = "ANTIP", "3255" = "ANTIP", "3320" = "ANTIP", "3370" = "ANTIP", "3372" = "ANTIP", "343" = "ANTIP", "36" = "ANTIP", "3637" = "ANTIP", "3827" = "ANTIP", "3845" = "ANTIP", "3880" = "ANTIP", "3881" = "ANTIP", "3882" = "ANTIP", "3916" = "ANTIP", "3931" = "ANTIP", "3939" = "ANTIP", "3974" = "ANTIP", "408" = "ANTIP", "456" = "ANTIP", "471" = "ANTIP", "529" = "ANTIP", "566" = "ANTIP", "666" = "ANTIP", "728" = "ANTIP", "760" = "ANTIP", "779" = "ANTIP", "780" = "ANTIP", "83" = "ANTIP", "839" = "ANTIP", "840" = "ANTIP", "858" = "ANTIP", "875" = "ANTIP", "876" = "ANTIP", "905" = "ANTIP", "91" = "ANTIP")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "3672" = "SEC", "1858" = "SEC", "3405" = "SEC", "3452" = "SEC", "3508" = "SEC", "3561" = "SEC", "3620" = "SEC", "3624" = "SEC", "3625" = "SEC", "3626" = "SEC", "3627" = "SEC", "3628" = "SEC", "3629" = "SEC", "3632" = "SEC", "3633" = "SEC", "3636" = "SEC", "3674" = "SEC", "3676" = "SEC", "4049" = "SEC", "2307" = "SEC", "2308" = "SEC", "2309" = "SEC", "2310" = "SEC", "2315" = "SEC", "2316" = "SEC", "2317" = "SEC", "2318" = "SEC", "2319" = "SEC", "2320" = "SEC", "2321" = "SEC", "2322" = "SEC", "2323" = "SEC", "2324" = "SEC", "2325" = "SEC", "2326" = "SEC", "2327" = "SEC", "2328" = "SEC", "2329" = "SEC", "2330" = "SEC", "2331" = "SEC", "2332" = "SEC", "2333" = "SEC", "2334" = "SEC", "2335" = "SEC", "2336" = "SEC", "2337" = "SEC", "2338" = "SEC", "2339" = "SEC",  "2364" = "SEC", "2365" = "SEC", "2366" = "SEC", "2367" = "SEC", "2368" = "SEC", "2369" = "SEC", "1072" = "SEC", "1170" = "SEC", "1258" = "SEC", "1356" = "SEC", "142" = "SEC", "1463" = "SEC", "1482" = "SEC", "1483" = "SEC", "1517" = "SEC", "1521" = "SEC", "1558" = "SEC", "1567" = "SEC", "1628" = "SEC", "1673" = "SEC", "1680" = "SEC", "1683" = "SEC", "1730" = "SEC", "175" = "SEC", "1759" = "SEC", "1786" = "SEC", "1817" = "SEC", "1822" = "SEC", "1827" = "SEC", "1832" = "SEC", "1849" = "SEC", "1852" = "SEC", "1859" = "SEC", "1864" = "SEC", "1872" = "SEC", "1873" = "SEC", "1880" = "SEC", "1897" = "SEC", "1900" = "SEC", "1908" = "SEC", "1912" = "SEC", "1938" = "SEC", "1959" = "SEC", "1963" = "SEC", "1984" = "SEC", "2010" = "SEC", "2404" = "SEC", "2433" = "SEC", "2506" = "SEC", "2507" = "SEC", "2508" = "SEC", "2509" = "SEC", "2510" = "SEC", "2511" = "SEC", "2512" = "SEC", "2513" = "SEC", "2526" = "SEC", "2562" = "SEC", "2674" = "SEC", "2677" = "SEC", "2683" = "SEC", "2690" = "SEC", "2691" = "SEC", "2719" = "SEC", "2727" = "SEC", "2733" = "SEC", "2747" = "SEC", "2749" = "SEC", "2758" = "SEC", "2774" = "SEC", "2788" = "SEC", "2790" = "SEC", "2791" = "SEC", "2798" = "SEC", "2807" = "SEC", "2818" = "SEC", "2826" = "SEC", "286" = "SEC", "2864" = "SEC", "2959" = "SEC", "2982" = "SEC", "3009" = "SEC", "3043" = "SEC", "3053" = "SEC", "3061" = "SEC", "3089" = "SEC", "3098" = "SEC", "3134" = "SEC", "3135" = "SEC", "3136" = "SEC", "3137" = "SEC", "3138" = "SEC", "3139" = "SEC", "3179" = "SEC", "3234" = "SEC", "3257" = "SEC", "3403" = "SEC", "3406" = "SEC", "3418" = "SEC", "3424" = "SEC", "3431" = "SEC", "344" = "SEC", "3496" = "SEC", "3506" = "SEC", "3516" = "SEC", "3524" = "SEC", "3534" = "SEC", "3539" = "SEC", "3564" = "SEC", "3565" = "SEC", "3568" = "SEC", "3574" = "SEC", "3575" = "SEC", "3576" = "SEC", "3577" = "SEC", "3578" = "SEC", "3579" = "SEC", "3580" = "SEC", "3581" = "SEC", "3582" = "SEC", "3583" = "SEC", "3584" = "SEC", "3585" = "SEC", "3601" = "SEC", "3607" = "SEC", "3699" = "SEC", "3701" = "SEC", "3702" = "SEC", "3704" = "SEC", "3705" = "SEC", "3706" = "SEC", "3708" = "SEC", "3709" = "SEC", "3710" = "SEC", "3712" = "SEC", "3782" = "SEC", "3794" = "SEC", "3797" = "SEC", "3801" = "SEC", "3804" = "SEC", "3849" = "SEC", "4013" = "SEC", "4025" = "SEC", "4047" = "SEC", "452" = "SEC", "459" = "SEC", "460" = "SEC", "530" = "SEC", "567" = "SEC", "610" = "SEC", "718" = "SEC", "731" = "SEC", "759" = "SEC", "762" = "SEC", "776" = "SEC", "778" = "SEC", "830" = "SEC", "878" = "SEC", "907" = "SEC", "927" = "SEC", "970" = "SEC", "972" = "SEC", "975" = "SEC", "986" = "SEC", "989" = "SEC")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "235" = "SIDE DISH", "2692" = "SIDE DISH", "3063" = "SIDE DISH", "3079" = "SIDE DISH", "3080" = "SIDE DISH", "3285" = "SIDE DISH", "3394" = "SIDE DISH", "3425" = "SIDE DISH", "3433" = "SIDE DISH", "3477" = "SIDE DISH", "1082" = "SIDE DISH", "1086" = "SIDE DISH", "1087" = "SIDE DISH", "1088" = "SIDE DISH", "1089" = "SIDE DISH", "1162" = "SIDE DISH", "1178" = "SIDE DISH", "1210" = "SIDE DISH", "1350" = "SIDE DISH", "1388" = "SIDE DISH", "1428" = "SIDE DISH", "1448" = "SIDE DISH", "1541" = "SIDE DISH", "1579" = "SIDE DISH", "1585" = "SIDE DISH", "1634" = "SIDE DISH", "1670" = "SIDE DISH", "1690" = "SIDE DISH", "1711" = "SIDE DISH", "1728" = "SIDE DISH", "1767" = "SIDE DISH", "1769" = "SIDE DISH", "177" = "SIDE DISH", "1782" = "SIDE DISH", "1797" = "SIDE DISH", "1809" = "SIDE DISH", "1813" = "SIDE DISH", "1947" = "SIDE DISH", "2018" = "SIDE DISH", "2378" = "SIDE DISH", "2417" = "SIDE DISH", "2467" = "SIDE DISH", "2522" = "SIDE DISH", "2556" = "SIDE DISH", "2568" = "SIDE DISH", "2608" = "SIDE DISH", "2751" = "SIDE DISH", "2777" = "SIDE DISH", "2806" = "SIDE DISH", "2816" = "SIDE DISH", "2829" = "SIDE DISH", "2849" = "SIDE DISH", "2867" = "SIDE DISH", "2876" = "SIDE DISH", "2877" = "SIDE DISH", "2943" = "SIDE DISH", "2956" = "SIDE DISH", "3012" = "SIDE DISH", "3033" = "SIDE DISH", "3573" = "SIDE DISH", "3682" = "SIDE DISH", "3750" = "SIDE DISH", "3844" = "SIDE DISH", "3982" = "SIDE DISH", "4030" = "SIDE DISH", "548" = "SIDE DISH", "645" = "SIDE DISH", "650" = "SIDE DISH", "686" = "SIDE DISH", "720" = "SIDE DISH", "722" = "SIDE DISH", "781" = "SIDE DISH", "877" = "SIDE DISH", "888" = "SIDE DISH", "898" = "SIDE DISH", "904" = "SIDE DISH", "944" = "SIDE DISH", "985" = "SIDE DISH")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1111" = "CHICKEN", "1920" = "CHICKEN", "2009" = "CHICKEN", "2011" = "CHICKEN", "2014" = "CHICKEN", "2017" = "CHICKEN", "2418" = "CHICKEN", "2583" = "CHICKEN", "2584" = "CHICKEN", "2748" = "CHICKEN", "3020" = "CHICKEN", "3245" = "CHICKEN", "579" = "CHICKEN", "755" = "CHICKEN", "94" = "CHICKEN")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1112" = "BEEF", "1153" = "BEEF", "2577" = "BEEF", "2578" = "BEEF", "3377" = "BEEF", "580" = "BEEF", "843" = "BEEF")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1113" = "SCHRIMP", "1375" = "SCHRIMP", "1557" = "SCHRIMP", "2651" = "SCHRIMP", "2841" = "SCHRIMP", "584" = "SCHRIMP")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1115" = "SUSHI", "1116" = "SUSHI", "119" = "SUSHI", "120" = "SUSHI", "121" = "SUSHI", "122" = "SUSHI", "123" = "SUSHI", "124" = "SUSHI", "125" = "SUSHI", "126" = "SUSHI", "127" = "SUSHI", "130" = "SUSHI", "131" = "SUSHI", "1351" = "SUSHI", "1368" = "SUSHI", "1369" = "SUSHI", "1370" = "SUSHI", "1371" = "SUSHI", "1372" = "SUSHI", "1553" = "SUSHI", "1554" = "SUSHI", "1555" = "SUSHI", "1556" = "SUSHI", "1559" = "SUSHI", "1933" = "SUSHI", "1993" = "SUSHI", "1994" = "SUSHI", "1995" = "SUSHI", "1996" = "SUSHI", "1997" = "SUSHI", "1998" = "SUSHI", "1999" = "SUSHI", "2027" = "SUSHI", "2028" = "SUSHI", "2029" = "SUSHI", "2030" = "SUSHI", "2474" = "SUSHI", "2475" = "SUSHI", "2477" = "SUSHI", "2478" = "SUSHI", "2479" = "SUSHI", "2528" = "SUSHI", "2529" = "SUSHI", "2530" = "SUSHI", "2531" = "SUSHI", "2532" = "SUSHI", "2542" = "SUSHI", "2546" = "SUSHI", "2548" = "SUSHI", "2549" = "SUSHI", "2550" = "SUSHI", "2551" = "SUSHI", "2552" = "SUSHI", "2554" = "SUSHI", "2563" = "SUSHI", "2564" = "SUSHI", "2593" = "SUSHI", "2647" = "SUSHI", "2648" = "SUSHI", "2649" = "SUSHI", "2650" = "SUSHI", "2844" = "SUSHI", "2933" = "SUSHI", "2971" = "SUSHI", "2972" = "SUSHI", "2973" = "SUSHI", "2974" = "SUSHI", "2975" = "SUSHI", "3005" = "SUSHI", "3006" = "SUSHI", "3204" = "SUSHI", "3213" = "SUSHI", "3215" = "SUSHI", "3217" = "SUSHI", "3218" = "SUSHI", "3219" = "SUSHI", "3220" = "SUSHI", "3221" = "SUSHI", "3222" = "SUSHI", "3224" = "SUSHI", "3225" = "SUSHI", "3275" = "SUSHI", "3321" = "SUSHI", "3325" = "SUSHI", "3326" = "SUSHI", "3327" = "SUSHI", "3328" = "SUSHI", "3457" = "SUSHI", "3458" = "SUSHI", "3459" = "SUSHI", "3461" = "SUSHI", "3462" = "SUSHI", "3463" = "SUSHI", "3464" = "SUSHI", "3467" = "SUSHI", "3640" = "SUSHI", "3641" = "SUSHI", "3642" = "SUSHI", "3643" = "SUSHI", "3644" = "SUSHI", "3645" = "SUSHI", "3646" = "SUSHI", "3648" = "SUSHI", "3791" = "SUSHI", "3826" = "SUSHI", "3829" = "SUSHI", "3830" = "SUSHI", "3831" = "SUSHI", "3832" = "SUSHI", "3833" = "SUSHI", "3834" = "SUSHI", "3879" = "SUSHI", "3941" = "SUSHI", "3942" = "SUSHI", "3943" = "SUSHI", "3944" = "SUSHI", "3949" = "SUSHI", "3972" = "SUSHI", "3973" = "SUSHI", "3975" = "SUSHI", "3976" = "SUSHI", "3977" = "SUSHI", "3978" = "SUSHI", "3979" = "SUSHI", "3980" = "SUSHI", "3981" = "SUSHI", "3984" = "SUSHI", "4019" = "SUSHI", "4020" = "SUSHI", "4021" = "SUSHI", "4022" = "SUSHI", "4023" = "SUSHI", "484" = "SUSHI", "485" = "SUSHI", "486" = "SUSHI", "488" = "SUSHI", "586" = "SUSHI", "587" = "SUSHI", "588" = "SUSHI", "589" = "SUSHI", "590" = "SUSHI", "667" = "SUSHI", "668" = "SUSHI", "670" = "SUSHI", "671" = "SUSHI", "672" = "SUSHI", "673" = "SUSHI", "681" = "SUSHI", "688" = "SUSHI", "910" = "SUSHI", "912" = "SUSHI", "913" = "SUSHI", "914" = "SUSHI", "915" = "SUSHI", "916" = "SUSHI")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1131" = "PASTA", "1146" = "PASTA", "1147" = "PASTA", "1151" = "PASTA", "1155" = "PASTA", "1168" = "PASTA", "1169" = "PASTA", "1175" = "PASTA", "1194" = "PASTA", "1196" = "PASTA", "1197" = "PASTA", "1237" = "PASTA", "1263" = "PASTA", "1312" = "PASTA", "1314" = "PASTA", "1325" = "PASTA", "1355" = "PASTA", "1364" = "PASTA", "1382" = "PASTA", "1459" = "PASTA", "1460" = "PASTA", "1549" = "PASTA", "1713" = "PASTA", "183" = "PASTA", "188" = "PASTA", "1982" = "PASTA", "1988" = "PASTA", "1990" = "PASTA", "1992" = "PASTA", "2003" = "PASTA", "2402" = "PASTA", "2631" = "PASTA", "2641" = "PASTA", "2704" = "PASTA", "2771" = "PASTA", "2786" = "PASTA", "2863" = "PASTA", "2942" = "PASTA", "2967" = "PASTA", "2991" = "PASTA", "3055" = "PASTA", "3143" = "PASTA", "3156" = "PASTA", "3318" = "PASTA", "3448" = "PASTA", "3450" = "PASTA", "3746" = "PASTA", "3847" = "PASTA", "4032" = "PASTA", "409" = "PASTA", "410" = "PASTA", "411" = "PASTA", "549" = "PASTA", "730" = "PASTA", "84" = "PASTA", "842" = "PASTA", "85" = "PASTA", "3764" = "PASTA")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1150" = "RICE", "1245" = "RICE", "1327" = "RICE", "1374" = "RICE", "1461" = "RICE", "1475" = "RICE", "1515" = "RICE", "1991" = "RICE", "2403" = "RICE", "2772" = "RICE", "2843" = "RICE", "3157" = "RICE", "3449" = "RICE", "397" = "RICE", "412" = "RICE")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1152" = "SOUP", "1249" = "SOUP", "1373" = "SOUP", "1981" = "SOUP", "3911" = "SOUP", "472" = "SOUP", "608" = "SOUP", "786" = "SOUP")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1154" = "FISH", "1247" = "FISH", "1610" = "FISH", "1613" = "FISH", "1702" = "FISH", "1800" = "FISH", "2500" = "FISH", "2504" = "FISH", "2776" = "FISH", "2882" = "FISH", "2940" = "FISH", "3308" = "FISH", "3408" = "FISH", "346" = "FISH", "3460" = "FISH", "399" = "FISH", "4037" = "FISH", "417" = "FISH", "550" = "FISH", "57" = "FISH", "575" = "FISH", "599" = "FISH", "600" = "FISH", "611" = "FISH", "613" = "FISH", "614" = "FISH", "683" = "FISH", "777" = "FISH", "844" = "FISH", "852" = "FISH", "882" = "FISH")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "254" = "MEX", "3239" = "MEX", "1184" = "MEX", "1185" = "MEX", "1511" = "MEX", "1537" = "MEX", "1570" = "MEX", "1571" = "MEX", "1647" = "MEX", "1744" = "MEX", "1792" = "MEX", "1979" = "MEX", "2373" = "MEX", "2468" = "MEX", "2469" = "MEX", "2470" = "MEX", "2471" = "MEX", "2523" = "MEX", "242" = "MEX", "3059" = "MEX", "3060" = "MEX", "3118" = "MEX", "3119" = "MEX", "3120" = "MEX", "3121" = "MEX", "3122" = "MEX", "3186" = "MEX", "3197" = "MEX", "3229" = "MEX", "3241" = "MEX", "3242" = "MEX", "3243" = "MEX", "3286" = "MEX", "3359" = "MEX", "3369" = "MEX", "3371" = "MEX", "3778" = "MEX", "3965" = "MEX", "3967" = "MEX", "3969" = "MEX", "3970" = "MEX", "3996" = "MEX", "3997" = "MEX", "3999" = "MEX", "685" = "MEX")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1212" = "PORK", "1726" = "PORK", "1889" = "PORK", "2399" = "PORK", "2576" = "PORK", "2585" = "PORK", "2586" = "PORK", "2701" = "PORK", "583" = "PORK")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1246" = "MEAT", "1326" = "MEAT", "140" = "MEAT", "1409" = "MEAT", "1436" = "MEAT", "1462" = "MEAT", "1509" = "MEAT", "1522" = "MEAT", "1535" = "MEAT", "1574" = "MEAT", "1703" = "MEAT", "1816" = "MEAT", "1821" = "MEAT", "2579" = "MEAT", "1826" = "MEAT", "1831" = "MEAT", "184" = "MEAT", "189" = "MEAT", "1974" = "MEAT", "2004" = "MEAT", "2025" = "MEAT", "2581" = "MEAT", "2587" = "MEAT", "2590" = "MEAT", "2591" = "MEAT", "2603" = "MEAT", "2604" = "MEAT", "2605" = "MEAT", "2616" = "MEAT", "2617" = "MEAT", "2723" = "MEAT", "2750" = "MEAT", "2775" = "MEAT", "2799" = "MEAT", "2852" = "MEAT", "2853" = "MEAT", "2880" = "MEAT", "2881" = "MEAT", "2969" = "MEAT", "3103" = "MEAT", "3112" = "MEAT", "3153" = "MEAT", "3184" = "MEAT", "3232" = "MEAT", "3262" = "MEAT", "3443" = "MEAT", "348" = "MEAT", "3687" = "MEAT", "3884" = "MEAT", "3887" = "MEAT", "3933" = "MEAT", "3950" = "MEAT", "398" = "MEAT", "4038" = "MEAT", "415" = "MEAT", "52" = "MEAT", "547" = "MEAT", "616" = "MEAT", "617" = "MEAT", "626" = "MEAT", "628" = "MEAT", "696" = "MEAT", "767" = "MEAT", "775" = "MEAT", "845" = "MEAT", "846" = "MEAT", "853" = "MEAT", "881" = "MEAT")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1251" = "KIDS", "1360" = "KIDS", "1437" = "KIDS", "1705" = "KIDS", "1985" = "KIDS", "2012" = "KIDS", "2377" = "KIDS", "2752" = "KIDS", "2832" = "KIDS", "2833" = "KIDS", "3032" = "KIDS", "3235" = "KIDS", "3244" = "KIDS", "418" = "KIDS", "469" = "KIDS")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1298" = "PASTRY", "1819" = "PASTRY", "1824" = "PASTRY", "1829" = "PASTRY", "1835" = "PASTRY", "1841" = "PASTRY", "1885" = "PASTRY", "1888" = "PASTRY", "1969" = "PASTRY", "2006" = "PASTRY", "2039" = "PASTRY", "2040" = "PASTRY", "2154" = "PASTRY", "2389" = "PASTRY", "2415" = "PASTRY", "2448" = "PASTRY", "2490" = "PASTRY", "2494" = "PASTRY", "2495" = "PASTRY", "2496" = "PASTRY", "2497" = "PASTRY", "2498" = "PASTRY", "2627" = "PASTRY", "2856" = "PASTRY", "2857" = "PASTRY", "2964" = "PASTRY", "3017" = "PASTRY", "3018" = "PASTRY", "3050" = "PASTRY", "3099" = "PASTRY", "3100" = "PASTRY", "3101" = "PASTRY", "3108" = "PASTRY", "3109" = "PASTRY", "3110" = "PASTRY", "3145" = "PASTRY", "3146" = "PASTRY", "3329" = "PASTRY", "3336" = "PASTRY", "3340" = "PASTRY", "3343" = "PASTRY", "3480" = "PASTRY", "3488" = "PASTRY", "3914" = "PASTRY", "4029" = "PASTRY", "983" = "PASTRY")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "134" = "SAUCE", "1544" = "SAUCE", "1581" = "SAUCE", "1584" = "SAUCE", "1883" = "SAUCE", "1952" = "SAUCE", "2021" = "SAUCE", "2311" = "SAUCE", "2340" = "SAUCE", "2341" = "SAUCE", "2342" = "SAUCE", "2343" = "SAUCE", "2344" = "SAUCE", "2345" = "SAUCE", "2555" = "SAUCE", "2615" = "SAUCE", "2621" = "SAUCE", "2635" = "SAUCE", "2636" = "SAUCE", "2644" = "SAUCE", "3034" = "SAUCE", "3376" = "SAUCE", "3476" = "SAUCE", "3531" = "SAUCE", "3556" = "SAUCE", "3598" = "SAUCE", "3599" = "SAUCE", "3600" = "SAUCE", "3665" = "SAUCE", "3668" = "SAUCE", "3730" = "SAUCE", "3731" = "SAUCE", "3733" = "SAUCE", "3759" = "SAUCE", "3819" = "SAUCE", "3947" = "SAUCE", "568" = "SAUCE", "679" = "SAUCE", "695" = "SAUCE", "924" = "SAUCE", "96" = "SAUCE")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1357" = "EASTERN EUROPEAN FOOD")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1376" = "ASIAN", "1433" = "ASIAN", "1542" = "ASIAN", "1562" = "ASIAN", "1614" = "ASIAN", "1740" = "ASIAN", "1753" = "ASIAN", "1770" = "ASIAN", "1949" = "ASIAN", "1989" = "ASIAN", "2031" = "ASIAN", "2371" = "ASIAN", "2398" = "ASIAN", "2405" = "ASIAN", "2406" = "ASIAN", "2416" = "ASIAN", "2444" = "ASIAN", "2484" = "ASIAN", "2485" = "ASIAN", "2553" = "ASIAN", "2560" = "ASIAN", "2566" = "ASIAN", "2594" = "ASIAN", "2595" = "ASIAN", "2596" = "ASIAN", "2597" = "ASIAN", "2624" = "ASIAN", "2626" = "ASIAN", "2634" = "ASIAN", "2652" = "ASIAN", "2653" = "ASIAN", "2654" = "ASIAN", "2655" = "ASIAN", "2783" = "ASIAN", "2819" = "ASIAN", "2821" = "ASIAN", "288" = "ASIAN", "2970" = "ASIAN", "2976" = "ASIAN", "2977" = "ASIAN", "2978" = "ASIAN", "30" = "ASIAN", "3042" = "ASIAN", "3044" = "ASIAN", "3132" = "ASIAN", "3148" = "ASIAN", "3166" = "ASIAN", "3167" = "ASIAN", "3216" = "ASIAN", "3284" = "ASIAN", "3322" = "ASIAN", "3323" = "ASIAN", "3341" = "ASIAN", "3409" = "ASIAN", "3444" = "ASIAN", "3451" = "ASIAN", "3455" = "ASIAN", "3471" = "ASIAN", "3639" = "ASIAN", "37" = "ASIAN", "3744" = "ASIAN", "3763" = "ASIAN", "3835" = "ASIAN", "3896" = "ASIAN", "3898" = "ASIAN", "3909" = "ASIAN", "3917" = "ASIAN", "3945" = "ASIAN", "3946" = "ASIAN", "3958" = "ASIAN", "3959" = "ASIAN", "3961" = "ASIAN", "3964" = "ASIAN", "3983" = "ASIAN", "3993" = "ASIAN", "4005" = "ASIAN", "4051" = "ASIAN", "490" = "ASIAN", "493" = "ASIAN", "678" = "ASIAN", "684" = "ASIAN", "817" = "ASIAN", "909" = "ASIAN", "919" = "ASIAN", "92" = "ASIAN", "93" = "ASIAN", "95" = "ASIAN")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1447" = "TARTARE", "1586" = "TARTARE", "1587" = "TARTARE", "1693" = "TARTARE", "1935" = "TARTARE", "2521" = "TARTARE", "2565" = "TARTARE", "2607" = "TARTARE", "2739" = "TARTARE", "3214" = "TARTARE", "3324" = "TARTARE", "3395" = "TARTARE", "3410" = "TARTARE", "3456" = "TARTARE", "3638" = "TARTARE", "3940" = "TARTARE", "3971" = "TARTARE", "546" = "TARTARE", "603" = "TARTARE", "669" = "TARTARE", "682" = "TARTARE", "721" = "TARTARE", "729" = "TARTARE", "920" = "TARTARE", "930" = "TARTARE")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1704" = "VEGE", "2773" = "VEGE", "3163" = "VEGE", "345" = "VEGE", "585" = "VEGE", "88" = "VEGE")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "176" = "CHEESE", "2614" = "CHEESE", "2620" = "CHEESE", "2794" = "CHEESE", "3348" = "CHEESE", "4050" = "CHEESE", "634" = "CHEESE", "774" = "CHEESE")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1058" = "APERITIVI", "1070" = "APERITIVI", "1238" = "APERITIVI", "1252" = "APERITIVI", "2440" = "APERITIVI", "2465" = "APERITIVI", "2519" = "APERITIVI", "2842" = "APERITIVI", "2858" = "APERITIVI", "3159" = "APERITIVI")

# Other types 
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID,"2878" = "GROCERY","2879" = "GROCERY","2883" = "GROCERY","2884" = "GROCERY","2885" = "GROCERY","2886" = "GROCERY","2887" = "GROCERY","2889" = "GROCERY","2890" = "GROCERY","2891" = "GROCERY","2892" = "GROCERY","2893" = "GROCERY","2894" = "GROCERY","2895" = "GROCERY","2896" = "GROCERY","2897" = "GROCERY","2898" = "GROCERY","2899" = "GROCERY","2900" = "GROCERY","2901" = "GROCERY","2902" = "GROCERY","2903" = "GROCERY","2904" = "GROCERY","2905" = "GROCERY","2906" = "GROCERY","2907" = "GROCERY","2908" = "GROCERY","2909" = "GROCERY","2910" = "GROCERY","2912" = "GROCERY","2914" = "GROCERY","2916" = "GROCERY","2917" = "GROCERY","2918" = "GROCERY","2919" = "GROCERY","2920" = "GROCERY","2921" = "GROCERY","2922" = "GROCERY","2923" = "GROCERY","2924" = "GROCERY","2925" = "GROCERY","2926" = "GROCERY","2927" = "GROCERY","2928" = "GROCERY","2929" = "GROCERY","2937" = "GROCERY","2941" = "GROCERY","3692" = "GROCERY","3761" = "GROCERY","3871" = "GROCERY","3893" = "GROCERY","4034" = "GROCERY","4036" = "GROCERY")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1413" = "TABAC", "1580" = "TABAC", "2675" = "TABAC", "2676" = "TABAC", "2708" = "TABAC", "2836" = "TABAC", "2837" = "TABAC", "2839" = "TABAC", "2993" = "TABAC", "2994" = "TABAC", "3007" = "TABAC", "3008" = "TABAC", "3182" = "TABAC", "3293" = "TABAC", "3294" = "TABAC", "3295" = "TABAC", "3296" = "TABAC", "3297" = "TABAC", "3298" = "TABAC", "3299" = "TABAC", "3300" = "TABAC", "3301" = "TABAC", "3302" = "TABAC", "3303" = "TABAC", "3304" = "TABAC", "3313" = "TABAC", "3360" = "TABAC", "3361" = "TABAC", "3362" = "TABAC")


# Desserts
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "3206" = "DOLCI", "638" = "DOLCI", "1034" = "DOLCI", "1073" = "DOLCI", "1117" = "DOLCI", "1163" = "DOLCI", "1171" = "DOLCI", "1205" = "DOLCI", "1216" = "DOLCI", "1225" = "DOLCI", "1226" = "DOLCI", "1232" = "DOLCI", "1235" = "DOLCI", "1259" = "DOLCI", "1286" = "DOLCI", "1300" = "DOLCI", "132" = "DOLCI", "1328" = "DOLCI", "1361" = "DOLCI", "1377" = "DOLCI", "1385" = "DOLCI", "1408" = "DOLCI", "1468" = "DOLCI", "1501" = "DOLCI", "1526" = "DOLCI", "1550" = "DOLCI", "1560" = "DOLCI", "1566" = "DOLCI", "1575" = "DOLCI", "1621" = "DOLCI", "1674" = "DOLCI", "1686" = "DOLCI", "1692" = "DOLCI", "1708" = "DOLCI", "1732" = "DOLCI", "1772" = "DOLCI", "178" = "DOLCI", "1804" = "DOLCI", "1814" = "DOLCI", "185" = "DOLCI", "1857" = "DOLCI", "1884" = "DOLCI", "1901" = "DOLCI", "1939" = "DOLCI", "1953" = "DOLCI", "1960" = "DOLCI", "1972" = "DOLCI", "1986" = "DOLCI", "2005" = "DOLCI", "2019" = "DOLCI", "2032" = "DOLCI", "2312" = "DOLCI", "2346" = "DOLCI", "2347" = "DOLCI", "2348" = "DOLCI", "2349" = "DOLCI", "2350" = "DOLCI", "2351" = "DOLCI", "236" = "DOLCI", "2427" = "DOLCI", "2434" = "DOLCI", "2450" = "DOLCI", "2460" = "DOLCI", "2463" = "DOLCI", "2472" = "DOLCI", "2501" = "DOLCI", "2541" = "DOLCI", "2567" = "DOLCI", "2598" = "DOLCI", "2599" = "DOLCI", "2600" = "DOLCI", "2601" = "DOLCI", "2602" = "DOLCI", "2619" = "DOLCI", "2643" = "DOLCI", "2656" = "DOLCI", "2661" = "DOLCI", "2693" = "DOLCI", "2724" = "DOLCI", "2730" = "DOLCI", "2734" = "DOLCI", "2756" = "DOLCI", "2781" = "DOLCI", "2796" = "DOLCI", "2800" = "DOLCI", "2804" = "DOLCI", "2845" = "DOLCI", "2854" = "DOLCI", "2855" = "DOLCI", "2874" = "DOLCI", "2951" = "DOLCI", "296" = "DOLCI", "2979" = "DOLCI", "3003" = "DOLCI", "3036" = "DOLCI", "3045" = "DOLCI", "3064" = "DOLCI", "3081" = "DOLCI", "3104" = "DOLCI", "3113" = "DOLCI", "3124" = "DOLCI", "3125" = "DOLCI", "3126" = "DOLCI", "3127" = "DOLCI", "3129" = "DOLCI", "3140" = "DOLCI", "3200" = "DOLCI", "3210" = "DOLCI", "3227" = "DOLCI", "3233" = "DOLCI", "3238" = "DOLCI", "3264" = "DOLCI", "3333" = "DOLCI", "3334" = "DOLCI", "3335" = "DOLCI", "3346" = "DOLCI", "3426" = "DOLCI", "3474" = "DOLCI", "3478" = "DOLCI", "3479" = "DOLCI", "3481" = "DOLCI", "3486" = "DOLCI", "3493" = "DOLCI", "3513" = "DOLCI", "3542" = "DOLCI", "3586" = "DOLCI", "3587" = "DOLCI", "3588" = "DOLCI", "3649" = "DOLCI", "3652" = "DOLCI", "3688" = "DOLCI", "3689" = "DOLCI", "3694" = "DOLCI", "3695" = "DOLCI", "3696" = "DOLCI", "3714" = "DOLCI", "3715" = "DOLCI", "3717" = "DOLCI", "3757" = "DOLCI", "3762" = "DOLCI", "3783" = "DOLCI", "3807" = "DOLCI", "3821" = "DOLCI", "3836" = "DOLCI", "3851" = "DOLCI", "3910" = "DOLCI", "3925" = "DOLCI", "3936" = "DOLCI", "3956" = "DOLCI", "3985" = "DOLCI", "4028" = "DOLCI", "453" = "DOLCI", "464" = "DOLCI", "479" = "DOLCI", "531" = "DOLCI", "556" = "DOLCI", "569" = "DOLCI", "735" = "DOLCI", "764" = "DOLCI", "831" = "DOLCI", "889" = "DOLCI", "90" = "DOLCI", "918" = "DOLCI", "962" = "DOLCI", "979" = "DOLCI")

# Beverages
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "519" = "BEV", "640" = "BEV", "1056" = "BEV", "1069" = "BEV", "1078" = "BEV", "1118" = "BEV", "1159" = "BEV", "1164" = "BEV", "1172" = "BEV", "1206" = "BEV", "1275" = "BEV", "1277" = "BEV", "1301" = "BEV", "135" = "BEV", "1365" = "BEV", "1366" = "BEV", "1378" = "BEV", "1386" = "BEV", "1400" = "BEV", "1411" = "BEV", "1430" = "BEV", "1439" = "BEV", "1470" = "BEV", "1486" = "BEV", "1504" = "BEV", "1513" = "BEV", "152" = "BEV", "1527" = "BEV", "1539" = "BEV", "1561" = "BEV", "1576" = "BEV", "1594" = "BEV", "1616" = "BEV", "163" = "BEV", "1630" = "BEV", "1645" = "BEV", "1650" = "BEV", "1667" = "BEV", "1675" = "BEV", "1687" = "BEV", "1696" = "BEV", "1709" = "BEV", "1736" = "BEV", "1737" = "BEV", "1742" = "BEV", "1763" = "BEV", "1773" = "BEV", "1780" = "BEV", "1787" = "BEV", "179" = "BEV", "1805" = "BEV", "1818" = "BEV", "1823" = "BEV", "1828" = "BEV", "1834" = "BEV", "1840" = "BEV", "186" = "BEV", "1865" = "BEV", "1866" = "BEV", "1876" = "BEV", "1902" = "BEV", "1906" = "BEV", "1914" = "BEV", "1918" = "BEV", "1930" = "BEV", "1940" = "BEV", "1954" = "BEV", "1955" = "BEV", "1965" = "BEV", "1968" = "BEV", "2007" = "BEV", "2020" = "BEV", "2024" = "BEV", "2313" = "BEV", "2314" = "BEV", "2352" = "BEV", "2353" = "BEV", "2354" = "BEV", "2355" = "BEV", "2356" = "BEV", "2357" = "BEV", "2358" = "BEV", "2359" = "BEV", "2360" = "BEV", "2361" = "BEV", "2362" = "BEV", "2363" = "BEV", "2374" = "BEV", "238" = "BEV", "239" = "BEV", "2421" = "BEV", "2422" = "BEV", "2439" = "BEV", "2441" = "BEV", "2443" = "BEV", "2449" = "BEV", "2456" = "BEV", "2473" = "BEV", "2516" = "BEV", "2517" = "BEV", "2518" = "BEV", "2557" = "BEV", "2575" = "BEV", "258" = "BEV", "261" = "BEV", "2632" = "BEV", "2638" = "BEV", "2657" = "BEV", "2663" = "BEV", "2686" = "BEV", "2694" = "BEV", "2715" = "BEV", "2735" = "BEV", "2742" = "BEV", "2787" = "BEV", "2801" = "BEV", "2820" = "BEV", "2828" = "BEV", "2835" = "BEV", "2846" = "BEV", "2860" = "BEV", "2930" = "BEV", "2952" = "BEV", "3002" = "BEV", "3013" = "BEV", "3026" = "BEV", "3035" = "BEV", "3041" = "BEV", "3072" = "BEV", "3073" = "BEV", "3083" = "BEV", "3105" = "BEV", "3114" = "BEV", "3123" = "BEV", "3158" = "BEV", "3193" = "BEV", "3194" = "BEV", "3201" = "BEV", "3211" = "BEV", "3226" = "BEV", "3287" = "BEV", "329" = "BEV", "33" = "BEV", "3339" = "BEV", "3374" = "BEV", "3388" = "BEV", "3389" = "BEV", "3390" = "BEV", "3392" = "BEV", "3396" = "BEV", "3428" = "BEV", "3434" = "BEV", "3446" = "BEV", "3475" = "BEV", "3482" = "BEV", "3483" = "BEV", "352" = "BEV", "3550" = "BEV", "3559" = "BEV", "3592" = "BEV", "3593" = "BEV", "3594" = "BEV", "364" = "BEV", "3647" = "BEV", "3657" = "BEV", "366" = "BEV", "3660" = "BEV", "3684" = "BEV", "369" = "BEV", "3697" = "BEV", "3698" = "BEV", "3722" = "BEV", "3723" = "BEV", "3728" = "BEV", "3729" = "BEV", "3756" = "BEV", "3760" = "BEV", "3813" = "BEV", "3837" = "BEV", "3866" = "BEV", "3878" = "BEV", "3908" = "BEV", "3919" = "BEV", "3938" = "BEV", "3948" = "BEV", "3957" = "BEV", "3986" = "BEV", "4001" = "BEV", "4008" = "BEV", "4018" = "BEV", "4027" = "BEV", "422" = "BEV", "430" = "BEV", "454" = "BEV", "482" = "BEV", "494" = "BEV", "51" = "BEV", "515" = "BEV", "539" = "BEV", "565" = "BEV", "571" = "BEV", "58" = "BEV", "642" = "BEV", "649" = "BEV", "675" = "BEV", "677" = "BEV", "690" = "BEV", "693" = "BEV", "736" = "BEV", "752" = "BEV", "765" = "BEV", "804" = "BEV", "82" = "BEV", "849" = "BEV", "890" = "BEV", "897" = "BEV", "922" = "BEV", "929" = "BEV", "942" = "BEV", "961" = "BEV", "97" = "BEV", "987" = "BEV", "991" = "BEV")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1432" = "BEER", "1063" = "BEER", "1285" = "BEER", "1441" = "BEER", "1474" = "BEER", "151" = "BEER", "1514" = "BEER", "1528" = "BEER", "1540" = "BEER", "1563" = "BEER", "157" = "BEER", "1577" = "BEER", "1591" = "BEER", "1600" = "BEER", "1617" = "BEER", "1631" = "BEER", "1651" = "BEER", "1677" = "BEER", "1688" = "BEER", "1697" = "BEER", "1764" = "BEER", "1789" = "BEER", "1806" = "BEER", "1926" = "BEER", "1941" = "BEER", "1943" = "BEER", "1966" = "BEER", "2034" = "BEER", "2375" = "BEER", "2461" = "BEER", "2487" = "BEER", "259" = "BEER", "2658" = "BEER", "2687" = "BEER", "2695" = "BEER", "2736" = "BEER", "2768" = "BEER", "2859" = "BEER", "2932" = "BEER", "2962" = "BEER", "3065" = "BEER", "3097" = "BEER", "3115" = "BEER", "32" = "BEER", "3252" = "BEER", "3378" = "BEER", "3466" = "BEER", "3485" = "BEER", "3749" = "BEER", "3921" = "BEER", "4010" = "BEER", "431" = "BEER", "805" = "BEER", "819" = "BEER", "850" = "BEER", "943" = "BEER")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1064" = "OTHER ALCOHOL", "1065" = "OTHER ALCOHOL", "1618" = "OTHER ALCOHOL", "2486" = "OTHER ALCOHOL", "2489" = "OTHER ALCOHOL", "2669" = "OTHER ALCOHOL", "2955" = "OTHER ALCOHOL", "3228" = "OTHER ALCOHOL", "3253" = "OTHER ALCOHOL", "3288" = "OTHER ALCOHOL", "3379" = "OTHER ALCOHOL", "3380" = "OTHER ALCOHOL", "3381" = "OTHER ALCOHOL", "3384" = "OTHER ALCOHOL", "3385" = "OTHER ALCOHOL", "3387" = "OTHER ALCOHOL", "799" = "OTHER ALCOHOL", "800" = "OTHER ALCOHOL", "801" = "OTHER ALCOHOL", "802" = "OTHER ALCOHOL", "803" = "OTHER ALCOHOL")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "136" = "WINE", "1431" = "WINE", "3753" = "WINE", "949" = "WINE", "950" = "WINE", "1066" = "WINE", "1067" = "WINE", "1236" = "WINE", "1264" = "WINE", "1266" = "WINE", "1267" = "WINE", "1268" = "WINE", "1283" = "WINE", "137" = "WINE", "1379" = "WINE", "1387" = "WINE", "1403" = "WINE", "1440" = "WINE", "1471" = "WINE", "1472" = "WINE", "1473" = "WINE", "154" = "WINE", "155" = "WINE", "156" = "WINE", "1564" = "WINE", "1596" = "WINE", "1597" = "WINE", "1601" = "WINE", "1602" = "WINE", "1603" = "WINE", "1620" = "WINE", "1632" = "WINE", "1676" = "WINE", "1689" = "WINE", "1698" = "WINE", "1788" = "WINE", "1903" = "WINE", "1921" = "WINE", "1923" = "WINE", "1942" = "WINE", "1967" = "WINE", "2376" = "WINE", "2408" = "WINE", "2411" = "WINE", "2480" = "WINE", "2488" = "WINE", "2668" = "WINE", "2696" = "WINE", "2710" = "WINE", "2711" = "WINE", "2712" = "WINE", "2737" = "WINE", "2743" = "WINE", "2744" = "WINE", "2753" = "WINE", "2754" = "WINE", "2755" = "WINE", "2757" = "WINE", "2778" = "WINE", "2861" = "WINE", "2868" = "WINE", "2869" = "WINE", "2870" = "WINE", "2954" = "WINE", "2961" = "WINE", "3066" = "WINE", "3067" = "WINE", "3068" = "WINE", "3071" = "WINE", "3251" = "WINE", "3307" = "WINE", "3312" = "WINE", "3314" = "WINE", "3315" = "WINE", "3349" = "WINE", "3397" = "WINE", "34" = "WINE", "3445" = "WINE", "3484" = "WINE", "35" = "WINE", "371" = "WINE", "3573" = "WINE", "3755" = "WINE", "3798" = "WINE", "3877" = "WINE", "3937" = "WINE", "423" = "WINE", "509" = "WINE", "624" = "WINE", "754" = "WINE", "768" = "WINE", "770" = "WINE", "783" = "WINE", "784" = "WINE", "785" = "WINE", "796" = "WINE", "797" = "WINE", "798" = "WINE", "854" = "WINE", "860" = "WINE", "862" = "WINE", "864" = "WINE", "865" = "WINE", "866" = "WINE", "868" = "WINE", "870" = "WINE", "871" = "WINE", "873" = "WINE", "9509" = "WINE")
product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "1299" = "SMOOTHIE", "1502" = "SMOOTHIE", "1735" = "SMOOTHIE", "1738" = "SMOOTHIE", "1739" = "SMOOTHIE", "1877" = "SMOOTHIE", "2041" = "SMOOTHIE", "2042" = "SMOOTHIE", "2379" = "SMOOTHIE", "2413" = "SMOOTHIE", "2424" = "SMOOTHIE", "2430" = "SMOOTHIE", "2445" = "SMOOTHIE", "2451" = "SMOOTHIE", "2452" = "SMOOTHIE", "2697" = "SMOOTHIE", "3344" = "SMOOTHIE", "3345" = "SMOOTHIE")


## product_complete$PROD_catID <- recode_factor(product_complete$PROD_catID, "BEER" = "ALCOHOL", "WINE = ALCOHOL)
## Check how many levels :

levels(product_complete$PROD_catID)

#=============== AS FACTOR SUITE ======================

# go from 40 factors to 10/12 factors

# do it from merged dataset 2 to have the classification at each step ;)

# Need to match 2 tables --> key = order_id stays same

merged_dataset <- merge(base_data, product_complete, by = "order_id")
merged_dataset2 <- merged_dataset

merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "SMOOTHIE" = "NO ALCOHOL", "BEV" = "NO ALCOHOL" )
merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "WINE" = "ALCOHOL", "OTHER ALCOHOL" = "ALCOHOL", "BEER" = "ALCOHOL" )

merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "EASTERN EUROPEAN FOOD" = "INTERNATIONAL", "MEX" = "INTERNATIONAL", "SUSHI" = "INTERNATIONAL", "ASIAN" = "INTERNATIONAL", "KEBAB" = "INTERNATIONAL")
merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "TARTARE" = "MEAT/FISH", "PORK" = "MEAT/FISH", "CHICKEN" = "MEAT/FISH", "BEEF" = "MEAT/FISH", "MEAT" = "MEAT/FISH", "FISH" = "MEAT/FISH", "SCHRIMP" = "MEAT/FISH")
merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "APERITIVI" = "SNACKS", "SAUCE" = "SNACKS", "SIDE DISH" = "SNACKS", "ANTIP" = "SNACKS", "PRIMI" = "SNACKS")
merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "DOLCI" = "DESSERTS", "PASTRY" = "DESSERTS")
merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "SANDWICH" = "BURGER & SANDWICH", "BURGER" = "BURGER & SANDWICH", "PANINI" = "BURGER & SANDWICH", ) 
merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "CHEESE" = "VEGETARIAN", "VEGE" = "VEGETARIAN", "SOUP" = "VEGETARIAN", "SALAD" = "VEGETARIAN")
merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "PASTA" = "PASTA & RICE", "RICE" = "PASTA & RICE" )  
merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "TABAC" = "OTHER", "GROCERY" = "OTHER" )
merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "SEC" = "MAIN & MENU", "KIDS" = "MAIN & MENU")
merged_dataset2$PROD_catID <- recode_factor(merged_dataset2$PROD_catID, "reimboursement" = "UNCLASSIFIED", "NULL" = "UNCLASSIFIED")


levels(merged_dataset2$PROD_catID)#  In order to check out how many factors..

# Narrowed it down to 13 categories

########################################## GET MATRIX OF PERCENTAGES BY CATEGORY FOR EACH RESTAURANT ###########################

merged <- group_by(merged_dataset2, restaurant_id, PROD_catID) %>%
  mutate(total = n()) %>% 
  mutate(percentage = total/cumsum(n()))

merged2 <- merged[,c(6,24, 28)]

merged3 <- unique(merged2)
library(tidyr)

# Restaurant 1 :

merged3$restaurant_id <- as.factor(merged3$restaurant_id)

merged4 <- group_by(merged3, restaurant_id) %>%
  mutate(total_rest = sum(total))

merged5 <- group_by(merged4, restaurant_id) %>%
  mutate(CatPercentageRest = total/total_rest)

merged6 <- merged5[,c(1,2,5)]
reshape(merged6, direction = "wide", idvar = "restaurant_id", timevar = "PROD_catID")

merged7 <- merged6 %>% pivot_wider (names_from = "PROD_catID", values_from = "CatPercentageRest", values_fill = 0 )

#remove(merged, merged2, merged3, merged4, merged5, merged6)

######################################### TRY AGAIN BUT BALEK OF CATEGORY OTHER CAUSE IT FUCKS UP #########################################

m1 <-  merged3[!(merged3$PROD_catID == "OTHER") ,]
m2 <- m1[!(m1$PROD_catID == "UNCLASSIFIED"),]

m4 <- group_by(m2, restaurant_id) %>%
  mutate(total_rest = sum(total))

m5 <- group_by(m4, restaurant_id) %>%
  mutate(CatPercentageRest = total/total_rest)
m6 <- m5[,c(1,2,5)]
m7 <- m6 %>% pivot_wider (names_from = "PROD_catID", values_from = "CatPercentageRest", values_fill = 0 )

m8 <- m7[-c(1)]

######################################## TRY WITH NUMBER OF OCCURENCES AND NOT WITH PERCENTAGE  (and with other and unclassified) ############################

MM7 <- merged3 %>% pivot_wider(names_from = "PROD_catID", values_from = "total", values_fill = 0)

MM8 <- MM7[-c(1)]

######################################### Now try to plot it out ###########################################################3


merged8 <- merged7[-c(1)]

plot(merged7$`MAIN & MENU`)

############################################## NB clust ###########################33
library(NbClust)
clust1 <- NbClust(data = merged8, diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 6, method =  "kmeans", index = "kl", alphaBeale = 0.1)
clust1p <- as.factor(clust1$Best.partition)
clust1p
plot(clust1p)

# check out the 5th cluster (tot = 236) --> all from category other
# k means --> nbclust = 3
# average --> nbclust = 5 

# list1 = method = average
list1 = c(1, 1, 2, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 1, 1, 1, 2, 1, 1, 1,
           1, 1, 1, 1, 2, 1, 1, 2, 1, 1, 2, 2, 2, 1, 1, 1, 2, 1, 2, 1, 4, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 3,
         2, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1,
          1, 1, 1, 2, 1, 1, 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 3, 5, 1, 1, 1, 1, 1, 1, 1,
          1, 1, 1, 1, 2, 4, 1, 2, 1, 5, 5, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 3, 2, 1, 2, 1, 2, 1, 1, 1, 2, 1, 1, 1, 2, 5, 5, 4,
           2, 3, 2, 5, 1, 1, 1, 2, 3, 3, 1, 1, 1, 3, 1, 1, 2, 2, 1, 1, 2, 2, 1, 2, 1, 5, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1,
           2, 2, 1, 2, 1, 1, 1, 1)

# taking away the variables unclassified and other ...

clust2 <- NbClust(data = m8, diss = NULL, distance = "euclidean", min.nc = 1, max.nc = 6, method = "average", index = "kl", alphaBeale = 0.1)
clust2p <- clust2$Best.partition
clust2p

# de la vraie marde

clust3 <- NbClust(data = MM8, diss = NULL, distance = "euclidean", min.nc = 1, max.nc = 6, method = "average", index =  "kl", alphaBeale = 0.1)
# 6 clust
clust3p <- clust3$Best.partition
clust3p

plot(clust3p)

## encore pire ( WHY ??? )



####################################################### WITH CARELLO PRICE INSTEAD OF CATEGORY MAYBE ########################################################
merged <- group_by(merged_dataset2, restaurant_id, PROD_catID) %>%
  mutate(total = n()) %>% 
  mutate(percentage = total/cumsum(n()))

paga <- group_by(merged_dataset2, restaurant_id, PROD_price, PROD_quantity) %>%
  mutate(totprice = PROD_price * PROD_quantity)

paga2 <- paga[,c(6, 24, 28)]

paga3 <- paga2 %>% group_by(restaurant_id, PROD_catID) %>%
  summarize(totperrestaurant = sum(totprice))

paga4 <- paga3 %>% pivot_wider (names_from = "PROD_catID", values_from = "totperrestaurant", values_fill = 0 )

paga5 <- paga4[-c(1)]

paga6 <- scale(paga5)

clust4 <- NbClust(data = paga6, diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 6, method = "kmeans", index =  "kl", alphaBeale = 0.1)
clust4p <- clust4$Best.partition
clust4p

# scale or not c'est pas ouf

library(factoextra)
fviz_nbclust(merged8, kmeans, method = "gap", k.max = 10, verbose = FALSE)

############################################################# CODE A MONTRER A LA PROF ######################################################

# AVEC POURCENTAGE - average (5 level)

clust1 <- NbClust(data = merged8, diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 6, method =  "average", index = "kl", alphaBeale = 0.1)
clust1p <- as.factor(clust1$Best.partition)
clust1p
plot(clust1p)

# AVEC POURCENTAGE - kmeans (3 level)

clust1 <- NbClust(data = merged8, diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 6, method =  "kmeans", index = "kl", alphaBeale = 0.1)
clust1p <- as.factor(clust1$Best.partition)
clust1p
plot(clust1p)

# AVEC NB OCCURRENCE 

clust3 <- NbClust(data = MM8, diss = NULL, distance = "euclidean", min.nc = 1, max.nc = 6, method = "average", index =  "kl", alphaBeale = 0.1)
clust3p <- clust3$Best.partition
clust3p
plot(clust3p)

# SANS LA CATEGORIE AUTRE

clust2 <- NbClust(data = m8, diss = NULL, distance = "euclidean", min.nc = 1, max.nc = 6, method = "average", index = "kl", alphaBeale = 0.1)
clust2p <- clust2$Best.partition
clust2p
plot(clust2p)

# AVEC LE PRIX DU PANIER TOTAL - scaled

clust4 <- NbClust(data = paga6, diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 6, method = "kmeans", index =  "kl", alphaBeale = 0.1)
clust4p <- clust4$Best.partition
clust4p

# Avec le prix du panier - unsacaled

clust5 <- NbClust(data = paga5, diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 6, method = "kmeans", index =  "kl", alphaBeale = 0.1)
clust5p <- clust4$Best.partition
clust5p


################################## factoextraa 3333333333333333333


# NUMERO 1 THE BEST ONE WE HAVE SO FAR !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

library(factoextra)
fviz_nbclust(merged8, kmeans, method = "gap", k.max = 10, verbose = FALSE)

clusmerged8 <- eclust(merged8, FUNcluster = "kmeans", k = 6, hc_metric = "euclidean")
fviz_silhouette(clusmerged8)

# NUMERO 2 PAGAMENTO - SCLAED


fviz_nbclust(paga6, kmeans, method = "gap", k.max = 10, verbose = FALSE)

cluspaga6 <- eclust(paga6, FUNcluster = "kmeans", k = 10, hc_metric = "euclidean")
fviz_silhouette(cluspaga6)

# NUMERO 2 PAGAMENTO - UNSCLAED


fviz_nbclust(paga5, kmeans, method = "gap", k.max = 10, verbose = FALSE)

cluspaga5 <- eclust(paga5, FUNcluster = "kmeans", k = 10, hc_metric = "euclidean")
fviz_silhouette(cluspaga5)
