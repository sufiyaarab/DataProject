#!/bin/bash
echo "This script allows users to manage users of the current device via a simple interface."

# Menu
PS3="Menu Choice: ";
options=("Add user" "Delete user" "Modify user" "List all users" "Exit")
select option in "${options[@]}"
do
case $option in
    "Add user")
        source "./add_user.sh"
        ;;
    "Delete user")
	source "./delete_user.sh"
        ;;
    "Modify user")
        source "./modify_user.sh"
        ;;
    "List all users")
       source "./list_users.sh" 
        ;;
    "Exit")
        echo "Exited with error code 0."
        exit 0
        ;;
    *) # Invalid Option
        echo -e "\033[0;33mInvalid Input - Options are '1.Add user','2.Delete user', '3.Modify user', '4.List all users', '5.Exit'."
        echo -e "\e[3mHint: Enter only the number of the option, For example, to choose the 'Add user' option, enter only the number '1' and press enter.\e[0m\033[0;0m"
esac
echo -e "\n"
done
