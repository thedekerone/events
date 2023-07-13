import PromiseRouter from 'express-promise-router'
import { getTicketById } from './database'

export const eventsRouter = PromiseRouter()

eventsRouter.get<{ id: string }>('/:id', async (req, res) => {
    const { id } = req.params
    const ticket = await getTicketById(Number(id))
    res.send(ticket)
})
