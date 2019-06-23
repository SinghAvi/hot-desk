# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

desks = Desk.create([{ name: 'D1', occupied: false }, { name: 'D2', occupied: false }])
staffs = Staff.create([{ name: 'Admin', email: 'abc@abc.com', password: '123456', password_confirmation: '123456', role: 'admin'}])
