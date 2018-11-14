import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';
import { Api } from '../../providers';
/**
 * Generated class for the HomePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-home',
  templateUrl: 'home.html',
})
export class HomePage {
  private loginErrorString: string;
  denuncias;
  constructor(public navCtrl: NavController, public navParams: NavParams,public translateService: TranslateService,
    public api: Api) {

  }
  answer(){
    
  }
  ionViewDidLoad() {
    this.api.get("denuncia.json").subscribe(
      (data) => { 
        this.denuncias = data;
        console.log(data);
      },
      (error) =>{
        console.error(error);
      }
    )
  }
}
