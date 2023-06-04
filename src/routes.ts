import PromiseRouter from 'express-promise-router'
import { eventsRouter } from './endpoints/events/router'

export const routes = PromiseRouter()

routes.use('/events', eventsRouter)
