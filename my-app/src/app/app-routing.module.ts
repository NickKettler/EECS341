import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { BrewlistComponent } from './brewlist/brewlist.component';



const routes: Routes = [
  { path: 'brewlist', component: BrewlistComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
