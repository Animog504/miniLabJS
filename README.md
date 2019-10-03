# Song App

### Getting Started

- This project comes with a prebuilt Rails backend. `cd` into `/backend` and run `rails s` to start it.
- Open `index.html` in your browser

### User Should be able to:

- See a list of songs 
- Create a new song
    - Use text inputs to collect information about the song from the user

### API Endpoints
- Songs can be retrieved from `http://localhost:3000/songs`
- Songs can be created by sending a `POST` request to `http://localhost:3000/songs`

### Song Schema

```
{
    id: (integer)
    name: (string)
    date_published: (string)
    artist_id: (integer)
}
```

