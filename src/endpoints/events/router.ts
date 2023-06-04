import PromiseRouter from 'express-promise-router'
import * as NodeCache from 'node-cache';
import { createEvent, getAllEvents, getEventById } from './database';

export const eventsRouter = PromiseRouter()

eventsRouter.get<{ id: string }>('/:id', async (req, res) => {
    const { id } = req.params
    const event = await getEventById(Number(id))
    res.send(event)

})

eventsRouter.get('/', async (req, res) => {
    const events = await getAllEvents()
    res.json(events)
})

eventsRouter.post('/', async (req, res) => {
    const { name, description, published } = req.body
    const event = await createEvent(name, description, published)

    res.send(event)
})