for i in range (101, 149):
    if i%2 != 0 :
       S = "int po " + str(i) + "\n" + "switchport mode access" + "\n" + "switchport access vlan 10" + "\n" + "shut " + "\n" + "no lacp suspend-individual" + "\n" + "no shut"
       print (S)