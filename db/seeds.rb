# Usuários
User.create name: "Sr Juvenal", kind: :admin, email: "juvenal1935@hotmail.com", password: 123456 
User.create name: "Sr L", kind: :librarian, email: "librarian@teste.com", password: 123456 

# Autores
10.times do
    Author.create name: Faker::Name.name
end

# Categorias
13.times do
    Category.create name: Faker::University.name
end

# Clientes
8.times do
    Client.create name: Faker::Name.name
end

