export class Pet {
  constructor(
    public breed?: string,
    public gender?: string,
    public castrated?: string,
    public birth_date?: string,
    public name?: string,
    public owner_name?: string,
    public owner_phone_number?: string,
    public last_visited?: string,
    public image_url?: string
  ){}
}
