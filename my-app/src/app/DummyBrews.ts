import { Brew } from './brew';

export const BREWS: Brew[] = [
  { id: 1, name: 'Gold Dust', breweryID: 1, type: 'Ale', isAvalible: true},
  { id: 2, name: 'Verde Gold', breweryID: 1, type: 'Ale', isAvalible: true},
  { id: 3, name: 'Barista Blonde', breweryID: 1, type: 'Ale', isAvalible: false},
  { id: 4, name: 'Hazy River NE IPA', breweryID: 2, type: 'IPA', isAvalible: true},
  { id: 5, name: 'Bad Luck Coffee Porter', breweryID: 2, type: 'Porter', isAvalible: true},
  { id: 6, name: 'Day Sipper', breweryID: 3, type: 'IPA', isAvalible: true},

];
