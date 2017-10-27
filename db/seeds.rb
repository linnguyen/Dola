# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: "admin@gmail.com", password: "123abc@", password_confirmation: "123abc@")
user.payments.create(name: "Electricity bill", fee: 300350)
user.payments.create(name: "Shopping", fee: 2050000)
user.payments.create(name: "Water bill", fee: 12000000)
user.payments.create(name: "Furniture", fee: 1000000)

# two type of debt : creditor: 1, debter: 0
user.debts.create(content: "Pay for grocery bill", fee: 301032, finance_type: 0)
user.debts.create(content: "Roomate guy owns me 70000 vnd", fee: 70000, finance_type: 1)
user.debts.create(content: "Pay for room renting fee.", fee: 320000, finance_type: 0)

user.incomes.create(name: "Salary for this month", value: 3000000)
user.incomes.create(name: "Bonus from Bitchain", value: 100000000)

