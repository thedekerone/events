import prisma from "../../connection";
import { Prisma } from '@prisma/client'


export async function getAllEvents() {
    return prisma.event.findMany()
}

export async function getEventById(id: number) {
    return prisma.event.findFirst({ where: { id } })
}

export async function createEvent({title, description,is_live,currency_id,end_date,location_address,organiser_id,sales_volume,start_date}: Prisma.EventCreateInput) {
    return prisma.event.create({
        data: {
            title,
            description,
            is_live,
            currency_id,
            end_date,
            location_address,
            organiser_id,
            sales_volume,
            start_date,
        }
    })
}