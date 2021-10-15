
Role.create([
    { name: 'Librarian' },
    { name: 'Student' }
])

BookGenre.create([
    { name: 'Fantasy' },
    { name: 'Adventure' },
    { name: 'Romance' },
    { name: 'Contemporary' },
    { name: 'Dystopian' },
    { name: 'Mystery' },
    { name: 'Horror' },
    { name: 'Thriller' },
    { name: 'Paranormal' },
    { name: 'Historical fiction' },
    { name: 'Science Fiction' },
    { name: 'Children’s' },
    { name: 'Memoir' },
    { name: 'Cooking' },
    { name: 'Art' },
    { name: 'Self-help / Personal' },
    { name: 'Development' },
    { name: 'Motivational' },
    { name: 'Health' },
    { name: 'History' },
    { name: 'Travel' },
    { name: 'Guide / How-to' },
    { name: 'Families & Relationships' },
    { name: 'Humor' }
])

User.create!([
    {
        first_name: 'Fernando',
        last_name: 'González',
        role_id: 1,
        email: 'fernando@university.com',
        password: '1234pass',
        password_confirmation: '1234pass'
    },
    {
        first_name: 'José',
        last_name: 'Castillo',
        role_id: 2,
        email: 'chepito@university.com',
        password: 'elchepe',
        password_confirmation: 'elchepe'
    }
])

Book.create([
    {
        title: 'Dune',
        author: 'Frank Herbert',
        publisher: 'Penguin Putnam Inc',
        publisher_year: 2011,
        genre_id: 1,
        stock: 5,
        available: 5
    },
    {
        title: '1984',
        author: 'George Orwell',
        publisher: 'Penguin Books Ltd',
        publisher_year: 2008,
        genre_id: 11,
        stock: 3,
        available: 3
    },
    {
        title: 'Atomic Habits',
        author: 'James Clear',
        publisher: 'Cornerstone',
        publisher_year: 2018,
        genre_id: 16,
        stock: 2,
        available: 2
    },
    {
        title: 'The Boy, The Mole, The Fox and The Horse',
        author: 'Charlie Mackesy',
        publisher: 'Ebury Publishing',
        publisher_year: 2019,
        genre_id: 16,
        stock: 1,
        available: 1
    },
    {
        title: 'Clean Code',
        author: 'Robert Martin',
        publisher: 'Pearson Education (US)',
        publisher_year: 2009,
        genre_id: 17,
        stock: 5,
        available: 5
    },
    {
        title: 'Best Places to Eat in Every Country',
        author: 'Food',
        publisher: 'Lonely Planet Global Limited',
        publisher_year: 2021,
        genre_id: 21,
        stock: 6,
        available: 6
    }
])