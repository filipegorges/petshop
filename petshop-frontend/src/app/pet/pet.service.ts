import { Injectable } from '@angular/core';
import { Headers, Http, Response } from '@angular/http';
import 'rxjs/Rx';
import { Observable } from 'rxjs/Observable';

import { Pet } from './pet.model';

@Injectable()
export class PetService {
  petsUrl: string = 'http://localhost:3001/pets.json';

  constructor(private http: Http) {}

  getPets() {
    return this.http.get(this.petsUrl)
      .map(
        (response: Response) => {
          const data = response.json() as Pet[];
          return data;
        }
      ).catch(
        (error: Response) => {
          console.log(error);
          return Observable.throw(error);
        }
      );
  }

  filterPets(petParams: any) {
    return this.http.get(this.petsUrl, {params: {pet: petParams}})
      .map(
        (response: Response) => {
          const data = response.json() as Pet[];
          return data;
        }
      ).catch(
        (error: Response) => {
          console.log(error);
          return Observable.throw(error);
        }
      );
  }
}