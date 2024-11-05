for i in range (13,23):
        s = "interface eth 1/" + str(i) + "\n" + "channel-group " + str(100+i) + " " + "mode active"
        print (s)


for i in range (113,123):
        command = "interface po " f'{i}' + "\n" + "switchport" + "\n" + "shut" + "\n" + "no lacp suspend-ind " + "\n" + "vpc " f'{i}' + "\n" + "no shut"
        print (command)
        # if i%2 == 0:
        #         a = "interface po " + str(i) + "\n" + "switchport" + "\n" + "switchport mode access vlan 1501"+ "\n" + "shut" + "\n" + "no lacp suspend-ind " + "\n" + "no shut" + "\n"
        #         print (a)
        # if i%2 != 0:
        #         b = "interface po " + str(i) + "\n" + "switchport" + "\n" + "switchport mode access vlan 2210"+ "\n" + "shut" + "\n" + "no lacp suspend-ind " + "\n" + "no shut" + "\n"
        #         print (b)
