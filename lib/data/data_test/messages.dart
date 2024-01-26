const listMessage = [
  {
    "id": "1a2b3c",
    "online": true,
    "profileImage": "https://postimg.cc/1n2n3n4n",
    "destinationId": "1234567896",
    "destinataireName": "Sophie Martin",
    "lastMessage": "Salut! Comment ça va? 😊",
    "unreadMessages": "2",
    "messageStatus": "1", // 0 = parti   1 = parti mais non vu   2 = parti et vu
    "sendTime": "2024-01-25T11:30:00.000Z",
    "pinned": false,
  },
  {
    "id": "4d5e6f",
    "online": false,
    "profileImage": "https://postimg.cc/4a5b6c",
    "destinationId": "1234567897",
    "destinataireName": "Gabriel Dubois",
    "lastMessage": "J'espère te voir bientôt!",
    "unreadMessages": "0",
    "messageStatus": "0",
    "sendTime": "2024-01-24T20:45:00.000Z",
    "pinned": false,
  },
  {
    "id": "7g8h9i",
    "online": true,
    "profileImage": "https://postimg.cc/7d8e9f",
    "destinationId": "1234567898",
    "destinataireName": "Zoé Girard",
    "lastMessage": "Tu veux sortir ce soir? ",
    "unreadMessages": "1",
    "messageStatus": "2",
    "sendTime": "2024-01-25T09:00:00.000Z",
    "pinned": false,
  },
  {
    "id": "1j2k3l",
    "online": true,
    "profileImage": "https://postimg.cc/1j2k3l",
    "destinationId": "1234567899",
    "destinataireName": "Lucas Lefebvre",
    "lastMessage": "Ça marche pour moi! 👍",
    "unreadMessages": "3",
    "messageStatus": "1",
    "sendTime": "2024-01-24T22:00:00.000Z",
    "pinned": true,
  },
  {
    "id": "4m5n6o",
    "online": false,
    "profileImage": "https://postimg.cc/4m5n6o",
    "destinationId": "1234567800",
    "destinataireName": "Léa Renault",
    "lastMessage": "On se voit demain alors!",
    "unreadMessages": "0",
    "messageStatus": "2",
    "sendTime": "2024-01-25T08:15:00.000Z",
    "pinned": true,
  },
  {
    "id": "7p8q9r",
    "online": true,
    "profileImage": "https://postimg.cc/7p8q9r",
    "destinationId": "1234567801",
    "destinataireName": "Théo Bertrand",
    "lastMessage": "Tu as fini tes devoirs? ",
    "unreadMessages": "2",
    "messageStatus": "1",
    "sendTime": "2024-01-25T10:20:00.000Z",
    "pinned": false,
  },
  {
    "id": "1s2t3u",
    "online": true,
    "profileImage": "https://postimg.cc/1s2t3u",
    "destinationId": "1234567802",
    "destinataireName": "Chloé Moreau",
    "lastMessage": "J'ai une surprise pour toi! ",
    "unreadMessages": "1",
    "messageStatus": "0",
    "sendTime": "2024-01-24T18:30:00.000Z",
    "pinned": false,
  },
  {
    "id": "4v5w6x",
    "online": false,
    "profileImage": "https://postimg.cc/4v5w6x",
    "destinationId": "1234567803",
    "destinataireName": "Louis Giroux",
    "lastMessage": "On se voit à la fête samedi? 🎂",
    "unreadMessages": "0",
    "messageStatus": "2",
    "sendTime": "2024-01-25T07:45:00.000Z",
    "pinned": false,
  },
  {
    "id": "7y8z9a",
    "online": true,
    "profileImage": "https://postimg.cc/7y8z9a",
    "destinationId": "1234567804",
    "destinataireName": "Emma Lambert",
    "lastMessage": "Besoin d'aide pour les maths! 📐",
    "unreadMessages": "4",
    "messageStatus": "1",
    "sendTime": "2024-01-24T16:00:00.000Z",
    "pinned": false,
  },
  {
    "id": "1b2c3d",
    "online": false,
    "profileImage": "https://postimg.cc/1b2c3d",
    "destinationId": "1234567805",
    "destinataireName": "Nathan Roy",
    "lastMessage": "Qu'est-ce que tu fais demain? 🤔",
    "unreadMessages": "3",
    "messageStatus": "0",
    "sendTime": "2024-01-24T21:00:00.000Z",
    "pinned": false,
  },
  {
    "id": "4e5f6g",
    "online": true,
    "profileImage": "https://postimg.cc/4e5f6g",
    "destinationId": "1234567806",
    "destinataireName": "Alice Caron",
    "lastMessage": "On va au cinéma ce soir? 🎬",
    "unreadMessages": "2",
    "messageStatus": "2",
    "sendTime": "2024-01-25T10:00:00.000Z",
    "pinned": false,
  },
  {
    "id": "7h8i9j",
    "online": true,
    "profileImage": "https://postimg.cc/7h8i9j",
    "destinationId": "1234567807",
    "destinataireName": "Hugo Roussel",
    "lastMessage": "Tu veux jouer aux jeux vidéo? 🎮",
    "unreadMessages": "1",
    "messageStatus": "1",
    "sendTime": "2024-01-24T19:30:00.000Z",
    "pinned": false,
  },
  {
    "id": "1k2l3m",
    "online": false,
    "profileImage": "https://postimg.cc/1k2l3m",
    "destinationId": "1234567808",
    "destinataireName": "Sarah Gagnon",
    "lastMessage": "Demain, c'est le grand jour! 🎓",
    "unreadMessages": "0",
    "messageStatus": "0",
    "sendTime": "2024-01-25T08:30:00.000Z",
    "pinned": false,
  },
  {
    "id": "4n5o6p",
    "online": false,
    "profileImage": "https://postimg.cc/4n5o6p",
    "destinationId": "1234567809",
    "destinataireName": "Juliette Lavoie",
    "lastMessage": "On se voit ce soir alors? 😉",
    "unreadMessages": "3",
    "messageStatus": "2",
    "sendTime": "2024-01-24T22:45:00.000Z",
    "pinned": false,
  },
  {
    "id": "7q8r9s",
    "online": true,
    "profileImage": "https://postimg.cc/7q8r9s",
    "destinationId": "1234567810",
    "destinataireName": "Maxime Bélanger",
    "lastMessage": "Besoin de ton avis sur quelque chose! 🤔",
    "unreadMessages": "2",
    "messageStatus": "1",
    "sendTime": "2024-01-25T09:45:00.000Z",
    "pinned": false,
  }
];
