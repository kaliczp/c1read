## waqImport a ~/kutatas/binHidegviz/waqImport.R ill. binHidegviz
ttfiles <- dir("bin")

for(ttname in ttfiles) {
    ttshortname <- sub("\\.waq","",ttname)
    assign(ttshortname, waqImport(paste0("bin/",ttname), Correction = 100))
}

c1 <- c(c1103, c1110, c1117, c1124, c1201,
        c1207, c1214, c1220, c1302, c1310,
        c1317, c1323, c1329, c1331, c1407,
        c1413, c1427, c1504, c1510, c1519,
        c1531, c1607, c1616, c1620, c1623,
        c1629, c1707, c1714, c1721, c1731,
        c1807, c1815, c1824, c1906, c1914,
        c1921, c1926, c1a03, c1a09, c1a18, c1a31)

## Mysterious cases of counting, why -0.01 the error and when?
prec <- c1[c1 != -0.01]
## Clean workplace
rm(list=ls(patt="^c1"));rm(list=ls(patt="^tt"))

plot(prec)
