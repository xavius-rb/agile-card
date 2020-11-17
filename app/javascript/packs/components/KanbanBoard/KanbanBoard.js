import React from "react"
import ReactDOM from 'react-dom'
import css from './Board.module.css'
import Column from './KanbanColumn/KanbanColumn'

const KanbanBoard = () => {
  const columnsList = [
    { name: "To DO" },
    { name: "In Progress" },
    { name: "QA" },
    { name: "Lodge" },
    { name: "UAT" },
    { name: "Done" }
  ]

  const columns = columnsList.map((el, index) => (
    <Column key={index} name={el.name} />
  ))

  return (
    <div className={css.KanbanBoard}>
      {columns}
    </div>
  )
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <KanbanBoard />, document.getElementById('kanban-board'),
  )
})
