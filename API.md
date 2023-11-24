# Model 

Popular Games.

```JSON
{ 
    "id" : int,
    "gameName" : "string", 
    "category" : "string",
    "totalBets" : int,
    "totalWins" : int,
    "averageBetAmount" : float,
    "popularityScore" : float,
    "lastUpdated" : "DateTime (timestamp)"
}
```

Where:
- `gameName` is the name of the game.
- `category` is the category to which the game belongs (slots, poker..)
- `popularityScore)` is a calculated score representing the popularity of the game. This could be based on a combination of factors such as total bets, total wins and player engagement.
- `totalBets` is the total number of bets placed on the game.
- `totalWins` is the total number of wins accumulated by players on the game
- `averageBetAmount` is the average amount of money bet on the game per play.
- `lastUpdated` is the timestamp indicating when the popularity data was last updated.


# API Documentation

### GET /gamedata

**Description**: Get all games data analyitics from database. 

##### Request
```js
GET /gamedata
```

##### Response : 200 
```js
    Ok 200
```
```json
{
        "id": "c4f945fc-9e6c-4c87-a773-e09bd8e28ab2",
        "gameName": "Penny Poker",
        "category": "Poker",
        "totalBets": 7000,
        "totalWins": 5200,
        "averageBetAmount": 15.5,
        "popularityScore": 0.72,
        "lastUpdated": "2023-11-10T10:12:26.542856Z"
},
```
--- 

### GET /gamedata/{id}

**Description**: Get a game data by its `id`.

##### Request

```js
GET /gamedata/{id}
```

##### Response: 200

*Example with id in the DDBB
```js
    Ok 200
```
```json
{
        "id": "c4f945fc-9e6c-4c87-a773-e09bd8e28ab2",
        "gameName": "Penny Poker",
        "category": "Poker",
        "totalBets": 7000,
        "totalWins": 5200,
        "averageBetAmount": 15.5,
        "popularityScore": 0.72,
        "lastUpdated": "2023-11-10T10:12:26.542856Z"
},
```

##### Response: 404
*Example with id not in the DDBB*

```js
    Not found 404
```
```json
{
    "type": "https://tools.ietf.org/html/rfc7231#section-6.5.4",
    "title": "Not Found",
    "status": 404,
    "traceId": "00-f0da4faa097bbade88c782224b7f8816-4e67ce9941304f5a-00"
}
```
--- 

### POST /gamedata

**Description**: Create a new game data from the request body

##### Request

```js
POST /gamedata
```

**Body**:
```json
{
    "gameName": "Penny Poker",  -- Required
    "category": "Poker",        -- Required
    "popularityScore": 0.72,
    "totalBets": 7000,
    "totalWins": 5200,
    "averageBetAmount": 15.50,
}
```

##### Response: 201

```js
    Created 201
```

```json
{
        "id": "c4f945fc-9e6c-4c87-a773-e09bd8e28ab2",
        "gameName": "Penny Poker",
        "category": "Poker",
        "totalBets": 7000,
        "totalWins": 5200,
        "averageBetAmount": 15.5,
        "popularityScore": 0.72,
        "lastUpdated": "2023-11-10T10:12:26.542856Z"
},
```

##### Response: 400

```js
    Bad Request 400
```
**Bad Request**: Validation errors. `gameName` and `category` are required values. JSON is required.

```json
{
    "type": "https://tools.ietf.org/html/rfc7231#section-6.5.1",
    "title": "One or more validation errors occurred.",
    "status": 400,
    "traceId": "00-6ab201249909ff0b0a1915c518ed9f6b-b0ec6624b51b2c56-00",
    "errors": {
        "Category": [
            "The Category field is required."
        ]
    }
} 
```
--- 
### PUT /gamedata/{id}

**Description**: Updates a new game data from the request body. All values are replaced by the new ones or its default.


##### Request

```js
PUT /gamedata/{id}
```

**Body**:
```json
{
    "gameName": "Penny Poker",   -- Required
    "category": "Poker",         -- Required 
    "popularityScore": 0.72,
    "totalBets": 7000,
    "totalWins": 5200,
    "averageBetAmount": 15.50,
}
```

##### Response: 204

```js
    No content 204
```

##### Response: 404
*Example with id not in the DDBB*

```js
    Not found 404
```
```json
{
    "type": "https://tools.ietf.org/html/rfc7231#section-6.5.4",
    "title": "Not Found",
    "status": 404,
    "traceId": "00-f0da4faa097bbade88c782224b7f8816-4e67ce9941304f5a-00"
}
```
--- 

### DELETE /gamedata/{id}

**Description**: Deletes a game data by its `id`.

##### Request

```js
DELETE /gamedata/{id}
```

##### Response: 204

*Example with id = c4f945fc-9e6c-4c87-a773-e09bd8e28ab2*

```js
    No content 204
```

##### Response: 404
*Example with id not in the DDBB*

```js
    Not found 404
```
```json
{
    "type": "https://tools.ietf.org/html/rfc7231#section-6.5.4",
    "title": "Not Found",
    "status": 404,
    "traceId": "00-f0da4faa097bbade88c782224b7f8816-4e67ce9941304f5a-00"
}
```
--- 
