import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';
import { Api } from '../../providers';

/**
 * Generated class for the DenunciaPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-denuncia',
  templateUrl: 'denuncia.html',
})
export class DenunciaPage {
  account: { date: string, time: string, 
  place: string, tipo: string, descripcion: string } = {
    date: "",
    time: '',
    place: '',
    tipo: 'Selecciona una opción',
    descripcion: ''
  };
  constructor(public navCtrl: NavController, public navParams: NavParams,public translateService: TranslateService,
  public api: Api) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DenunciaPage');
  }

}
