
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