#!/usr/bin/python3
"""fetching information fron JSONplaceholder api and exportts it to json"""

from json import dump
from requests import get
from sys import argv

if __name__ == "__main__":
    users_url = "https://jsonplaceholder.typicode.com/users"
    users_result = get(users_url).json()

    temp_dicto = {}
    for user in users_result:
        todo_list = []

        const = "https://jsonplaceholder.typicode.com"
        todos_url = const + "/user/{}/todos".format(user.get("id"))
        name_url = "https://jsonplaceholder.typicode.com/users/{}".format(
                user.get("id"))

        todo_result = get(todos_url).json()
        name_result = get(name_url).json()
        for todo in todo_result:
            todo_dict = {}
            todo_dict.update({"username": name_result.get("username"),
                              "task": todo.get("title"),
                              "completed": todo.get("completed")})
            todo_list.append(todo_dict)

            temp_dicto.update({user.get("id"): todo_list})

            with open("todo_all_employees.json", 'w') as f:
                dump(temp_dicto, f)
