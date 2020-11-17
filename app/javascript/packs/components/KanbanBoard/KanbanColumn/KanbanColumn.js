import React, { useState, useEffect } from "react"
import axios from 'axios'
import Card from '../KanbanCard/KanbanCard'
import css from './KanbanColumn.module.css'

export default (props) => {
  const [cards, setCards] = useState([]);

  useEffect(() => {
    axios.get('/cards.json')
      .then(response => {
        setCards(response.data.slice(0, 4))
      })
  }, [])

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

      <div className={css.Cards}>
        {
          cards.map((card) => (
            <Card key={card.id}
              title={card.title}
              code={card.code} />
          ))
        }
      </div>
    </div>
  )
}
