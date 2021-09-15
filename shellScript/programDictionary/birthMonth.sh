#! /bin/bash -x

#explicit declaration of dictionary

declare -A user

user['name']="sham"
user["stream"]="CS/IT"
user["age"]="24"
user["exp"]="fresher"
user["passout"]="2017"

# print all keys
echo Keys:${!user[@]}

# print all values
echo Values:${user[*]}

# specific key
echo passout:${user['passout']}



