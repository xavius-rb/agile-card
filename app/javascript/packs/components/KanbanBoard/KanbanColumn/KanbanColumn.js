import React, { useState, useEffect } from "react"
import axios from 'axios'
import Card from '../KanbanCard/KanbanCard'
import css from './KanbanColumn.module.css'

export default (props) => {
  const [cards, setCards] = useState([]);
  const [selectedCard, setSelectedCard] = useState(null)
  const [cardId, setCardId] = useState(null)

  useEffect(() => {
    axios.get('/cards.json')
      .then(response => {
        setCards(response.data.slice(0, 4))
      }).catch(error => {
        console.log(error)
      })
  }, [])

  useEffect(() => {
    if (cardId) {
      axios.get('/cards/' + cardId + '.json')
        .then(response => {
          console.log(response)
          setSelectedCard(response.data.data)
        })
    }
  }, [cardId])

  const addCard = () => {
    let newCardList = [...cards];
    newCardList.push({ title: "One more card added" })
    setCards(newCardList);
  }

  return (
    <div className={css.KanbanColumn}>
      <h3>
        {props.name} ({cards.length})
        <button onClick={addCard}>+</button>
      </h3>

      {
        cardId && selectedCard ?
          <div>
            <div dangerouslySetInnerHTML={{__html: selectedCard.attributes.description.body}}></div>
          </div> : null
      }

      <div className={css.Cards}>
        {
          cards.map((card) => (
            <Card key={card.id}
              title={card.title}
              clicked={() => setCardId(card.id)} />
          ))
        }
      </div>
    </div>
  )
}
