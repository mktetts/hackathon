import pickle
with open("table.pkl", 'rb') as file:
    file = pickle.load(file)

print(file["~l"])