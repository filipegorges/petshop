import { Component, OnInit } from '@angular/core';
import { Response } from '@angular/http';
import { Observable } from 'rxjs/Rx';

import { PetService } from '../pet.service';
import { Pet } from '../pet.model';

@Component({
  selector: 'app-pet-list',
  templateUrl: './pet-list.component.html',
  styleUrls: ['./pet-list.component.css'],
  providers: [ PetService ]
})

// Pet {
//   breed: string,
//   gender: string,
//   castrated: string,
//   birth_date: string,
//   name: string,
//   owner_name: string,
//   owner_phone_number: string,
//   last_visited: string,
//   image_url: string
// }

export class PetListComponent implements OnInit {
  pets: Pet[];
  petParams: Pet = new Pet();

  constructor(private petService: PetService) { }

  ngOnInit() {
    // let timer = Observable.timer(0, 2000)
    // timer.subscribe(() => this.listPets());
    this.listPets();
  }

  listPets() {
    this.petService.getPets()
      .subscribe(
        (pets: any) => this.pets = pets,
        (error) => console.log(error)
      );
  }

  filterPets() {
    this.petService.filterPets(this.petParams)
      .subscribe(
        (pets: any) => this.pets = pets,
        (error) => console.log(error)
      );
  }

}
