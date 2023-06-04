import express from 'express'
import Router from "express-promise-router";
import { routes } from './routes';

export const app = express()
const router = Router()
const port = 3000

app.use(router)
app.use(routes)

app.get('/', (req,res)=>{
    res.send('S')
})

app.listen(port, ()=>{
    console.log(`App listening to port: ${port}`)
})
