import prisma from "../../connection";

export async function getAllEvents() {
    return prisma.event.findMany()
}

export async function getEventById(id: number) {
    return prisma.event.findFirst({ where: { id } })
}

export async function createEvent(name: string, description: string, published = false) {
    return prisma.event.create({
        data: {
            name,
            description,
            published
        }
    })
}