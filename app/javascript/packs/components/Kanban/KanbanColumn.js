import React from "react"
import Card from './Card'

export default () => {
  return (
    <ol className='kanban-column'>
      <div className="title">
        <h2>Column</h2>
      </div>
      <Card />
    </ol>
  )
}
