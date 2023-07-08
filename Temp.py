# Some function I may use In future 
#Don't delete/Modefy this file





# class root_acess:
#     def __init__(self, connection):
#         self.mydb  = connection


#     def adduser(self):
#         pass

#     def addsupplier(self):
#         pass

#     def addemployee(self):
#         pass

#     def add_menu(self):
#         cont = True  
#         while cont:  
#             print("                 Login")
#             print("1: User Login")
#             print("2: Employee Login")
#             print("3: Supplier Login")
#             print("0: Exit")
#             choice = int(input("Enter Choice: "))
#             if choice == 0 or choice == 2 or choice == 1 or choice == 3:
#                 return choice
#             else:
#                 print("Invalid Choice !! Try Again")



#     def usermenu(self):
#         cont = True  
#         while cont:  
#             print("                 Login")
#             print("1: User Login")
#             print("2: Employee Login")
#             print("3: Supplier Login")
#             print("0: Exit")
#             choice = int(input("Enter Login Choice: "))
#             if choice == 0 or choice == 2 or choice == 1 or choice == 3:
#                 return choice
#             else:
#                 print("Invalid Choice !! Try Again")    

#     def suplliermenu(self):
#         cont = True  
#         while cont:  
#             print("                 Login")
#             print("1: User Login")
#             print("2: Employee Login")
#             print("3: Supplier Login")
#             print("0: Exit")
#             choice = int(input("Enter Login Choice: "))
#             if choice == 0 or choice == 2 or choice == 1 or choice == 3:
#                 return choice
#             else:
#                 print("Invalid Choice !! Try Again")   

#     def usermenu(self):
#         cont = True  
#         while cont:  
#             print("                 Login")
#             print("1: User Login")
#             print("2: Employee Login")
#             print("3: Supplier Login")
#             print("0: Exit")
#             choice = int(input("Enter Login Choice: "))
#             if choice == 0 or choice == 2 or choice == 1 or choice == 3:
#                 return choice
#             else:
#                 print("Invalid Choice !! Try Again")   
       




# class DataBaseConnector:
#     def __init__(self, host_t, user_n, user_passwd):
#         self.mydb  = c.connect(host = host_t, 
#                 user= user_n, 
#                 passwd = user_passwd,
#                 database="retail_store")
        
#         if self.mydb.is_connected() == FALSE:
#             print("unable to coonect to database")
#             END

#         # query = "select * from customer"
#         # mycursor = self.mydb.cursor()
#         # result = mycursor.execute(query)
#         # print(type(result))
#         # print(result)


#     def myfunc(self, query):
#         self.mycursor = self.mydb.cursor()
#         self.result  = self.mycursor.execute(query)
#         print(type(self.result))
#         print(self.result)
#         # mycursor.commit()
#         # mycursor.close()

#         # for i in mycursor:
#         #     print(i)

#     def customerlogin(self, choice):
#         user_id = int(input("Enter User ID: "))         #password for user ??
#         passwd = int(input("Enter Password: ")) 

#         if choice == 1:
#             pass

#         return 1

