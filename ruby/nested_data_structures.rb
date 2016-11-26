game_of_thrones = {
  houses: {
    loyal_to_the_iron_throne: {
      lannister:  [
        'Cersei',
        'Tywin',
        'Jamie'
      ],
      tyrell: [
        "Margaery",
        "Olenna",
        "Mace",
        "Loras"
        ]
    },
    at_war_with_the_iron_throne: {
      stark: [
        'Rob',
        'Arya',
        'John Snow',
        'Sansa'
        ],
        targaryen: 'Daenerys',
    },
    animals: {
        direwolf: 'Ghost',
        dragon: 'Drogon'
        
    },
  },
}

    game_of_thrones[:houses][:loyal_to_the_iron_throne][:lannister][1]
    game_of_thrones[:houses][:animals]
  game_of_thrones[:houses][:at_war_with_the_iron_throne][:stark].push('Rikkon')
