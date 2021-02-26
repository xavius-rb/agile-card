import React from "react"
import css from './KanbanCard.module.css';

export default (props) => {
  return (
    <div className={css.KanbanCard} onClick={props.clicked}>
      <div className={css.Header}>{props.code}</div>
      <div className={css.Body}>
        <h4 className={css.Title}>{props.title}</h4>
        <div className={css.Text}>
          {props.description}
        </div>
      </div>
    </div>
  )
}

