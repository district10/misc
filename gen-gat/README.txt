#|
#|     ####     ##     #####
#|    #    #   #  #      #
#|    #       #    #     #
#|    #  ###  ######     #
#|    #    #  #    #     #
#|     ####   #    #     #
#|
#|    Chinese Input Method

# The Script to Generate My Own Chinese Input Method Gat tables



Varable Length Encoding
-----------------------

+--------------------+------------------+----------------------+------------------------------------+
|         1g         |      one gram    |           [?]        | [?]: [{a..y} - {e,t}]		    |
+--------------------+------------------+----------------------+- ----------------------------------+
|         2g         |     two grams    |        [e] + [?]     | [?]: [{a..y} - {t}]		    |
+--------------------+------------------+----------------------+------------------------------------+
|         3g         |    three grams   |    [t] + [?] + [?]   | [?]: [{a..y} - {e}]; [?]: [{a..y}] |
+--------------------+------------------+----------------------+------------------------------------+
|         4g         |     four grams   |     [e]+[t]+[?]+[?]  | [?]: [{a..y}] both of them	    |
+--------------------+------------------+----------------------+------------------------------------+
|         5g         |     five grams   |   [e]+[t]+[?]+[?]+[?]| [?]: [{a..y}] all of them	    |
+--------------------+------------------+----------------------+------------------------------------+

 1. Letter "z" is reserved. 
 2. See my Script & Gat-tables folder for more infomation.
 3. All We care is Efficiency, and we don't want to watch and choose 1/2/3, that really kills me.
 4. Keys are binded to my neo-extended dvpe keyboard layout.
 5. I haven't learned it yet.(I'm busy)
 6. In Gat-tables, 'E' means letter 'e', and 'l', meaning left (left hand side), r, right hand side.
 7. According to easiness to type, keys of left hand sides are categoried into 4 groups, reffered as la, lb, lc, ld. And lA is la + 'e'. Similar for Right hand side letters.
 8. Left Right Alternative as the strategy to fasting typing.

    
