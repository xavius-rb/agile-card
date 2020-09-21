import React from "react"
import ReactDOM from 'react-dom'
import KanbanColumn from './KanbanColumn'

const KanbanBoard = () => {
  return (
    <div>
      <h2>MyBoard</h2>
      <KanbanColumn />
    </div>
  )
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <KanbanBoard />, document.getElementById('kanban-board'),
  )
})
