import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { PetService } from './pet/pet.service';
import { PetListComponent } from './pet/pet-list/pet-list.component';

@NgModule({
  declarations: [
    AppComponent,
    PetListComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule
  ],
  providers: [
    PetService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
