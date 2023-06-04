import PromiseRouter from 'express-promise-router'
import * as NodeCache from 'node-cache';

export const eventsRouter = PromiseRouter()

eventsRouter.get('/', (req,res)=>{
    res.json({name: 'test event'})
})