# if there is any change in cursor then need to cursor.commit()

from pickle import FALSE
from tkinter import END
import mysql.connector as c
from os import system, name
from time import sleep

def clear():            # function to clear command prompt
	if name == 'nt':
		_ = system('cls')
	else:
		_ = system('clear')

def check_connection(user_n, user_passwd, choice):      #check if we can establish a connection 
    checker = None                                      #check in the user list if the data is valid or not  
    try:
        checker = c.connect(
            host='localhost', 
            user = 'admin_user', 
            password = 'admin_user',
            database = 'retail_store'
        )
        checker_list = checker.cursor(buffered=True)
        checker_list.execute("select user_id, password, type from user")
        user_typer = {1:"customer",2:"employee",3:"supplier"}
        
        for x in checker_list:
            if(x[0] == user_n and x[1] == user_passwd and x[2] == user_typer[choice]):
                return 1
    except:
        print("Something Went Wrong :(")
        print("Please wait we are working on It")
        sleep(2)
        exit()

    return -1

def create_connection(host_t, user_n, user_passwd, choice):             # function to establish connection
    mydb = None
    try:
        mydb  = c.connect(host = host_t, 
                user= user_n, 
                passwd = user_passwd,
                database="retail_store")
        
        if mydb.is_connected() == FALSE:
            print("unable to coonect to database")
            END
    except:
            print("Invalid User Id or Password!!")
    return mydb



def showSignin():
    sleep(0.25)
    clear()
    cont = True  
    while cont:  
        clear()
        print("-----------------------------------------------------------------------")
        print("                                Login")
        print("-----------------------------------------------------------------------")
        print("1: User Login")                  # 10051   WvMb1T
        print("2: Employee Login")
        print("3: Supplier Login")
        print("0: Exit")
        try:
            choice = int(input("Enter Login Choice: "))
        except:
            print("Something Went Wrong :(")
            exit()
        if choice == 0 or choice == 2 or choice == 1 or choice == 3:
            return choice
        else:
            print("Invalid Choice !! Try Again")
            sleep(0.5)
    return 0


def get_connection(choice):
    host_t = 'localhost'
    for count in range(0,3):
        sleep(0.25)
        clear()
        print("-----------------------------------------------------------------------")
        print("                                Sign In")
        print("-----------------------------------------------------------------------")
        user_n = ""
        user_passwd = ""
        try:
            user_n = int(input("User Id: ")) 
            user_passwd = str(input("Password: "))
        except:
            print("Something Went Wrong :(")
            exit()
         
        temp = check_connection(user_n, user_passwd, choice)
        if temp != -1:
            connection = create_connection(host_t, str(user_n), user_passwd, choice)
            return connection
        elif count == 2:
            print("3 Invalid-Input-Response!! Try Again Later")
            sleep(2)
            exit()
        else:
            try:
                c = int(input("0: Go Back, 1: Retry: "))
            except:
                print("Something Went Wrong :(")
            if c == 0:
                break
    return None
 
def veiw_cart(coonection):
    sleep(0.25)
    clear()

def veiw_all_product(coonection):
    sleep(0.25)
    clear()

def search_in_products(coonection):
    sleep(0.25)
    clear()
    print("-----------------------------------------------------------------------")
    print("                        Filter Option")
    print("-----------------------------------------------------------------------")    
    print("1: Sort in Alphabetical order")
    print("2: Sort in Reverse Alphabetical order")
    print("3: Search By name")
    print("4: Search in Product list based on cost Range")
    # choice = int(input("Enter Input: "))
    lst1 = [int(item) for item in input("Enter the list items : ").split()]
    print(lst1)
    print("")

    """
select *
from product
where product_name like '%wine%' 
order by product_name

select * 
from product
order by product_name 


select * 
from product
order by product_name desc

select *
from product
where cost between 70 and 100


select * 
 from product 
 where cost between 50 and 100 
and cost in (select cost from product 
 			where product_name like '%wine%');


select * 
from product 
where p_id in(
        select p_id from add_to_cart where (cart_id in (
            select cart_id from Customer where c_id = 1
        ))
	And purchased = FALSE);

    """
    

def customermenu(connection):
    sleep(0.25)
    clear()
    cont = True  
    while cont:  
        clear()
        print("-----------------------------------------------------------------------")
        print("                            Customer Menu")
        print("-----------------------------------------------------------------------")
        print("1: Veiw Cart")
        print("2: Veiw all Products")
        print("3: Search in Products")
        print("4: Order History")
        print("5: Change Address")
        print("6: Payment Info")
        print("7: Edit user Info")
        print("0: Exit")
        try:
            choice = int(input("Enter Login Choice: "))
        except:
            print("Something Went Wrong :(")
            exit()
        if choice == 1:
            pass
        elif choice == 2:
            search_in_products(connection)
        elif choice == 3:
            pass
        elif choice == 4:
            pass
        elif choice == 5:
            pass
        elif choice == 6:
            pass
        elif choice == 7:
            pass
        elif choice == 0:
            pass
        else:
            print("Invalid Choice !! Try Again")
            sleep(0.5)
    # return 0
    

"""
search product 
add to cart 
place order 
order history 
payment info 
address change 
user info edit 
"""
        
if __name__ == "__main__":
    
    cont = True 
    connection = None  
    while cont:                             # Print Login Options 
        clear()
        print("-----------------------------------------------------------------------")
        print("                                Login")
        print("-----------------------------------------------------------------------")
        print("1: Sign In")
        print("2: Sign Up")
        print("0: Exit")
        try:
            choice = int(input("Enter Choice: "))                             # Get Choice
        except:
            print("Something Went Wrong :(")

        if choice == 1:
            ans = showSignin()                                             # show sign In options
            if ans == 0:
                print("\n Thank you for Visisting :)")
                exit()
            connection = get_connection(ans)                                # secure connection with sql
            if ans == 1:
                customermenu(connection)
                break
            elif ans == 2:
                pass
                break
            elif ans == 3:
                pass
            break

        elif choice == 2: 
            pass
            # root_connection = root_acess("localhost","root_user", "root_user")
            # ans = root_connection.add_menu()
            # if ans == 1:
            #     root_connection.adduser()
            #     break
            # elif ans == 2:
            #     root_connection.addsupplier()
            #     break
            # elif ans == 3:
            #     root_connection.addemployee()
            #     break
            # elif ans == 0:
            #     exit()

        elif choice == 0:
            print("\n Thank you for Visisting :)")
            cont = False
            exit()
        else:
            print("Invalid Choice !! Try Again")

