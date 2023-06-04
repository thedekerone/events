import prisma from "../../connection";

export async function getTicketById(id:number){
    const event = await prisma.ticket.findFirst({where:{id}})
    return event
}