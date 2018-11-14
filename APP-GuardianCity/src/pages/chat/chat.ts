import { ContentPage } from './../content/content';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';
import { Api } from '../../providers';
import { Injectable } from '@angular/core';

/**
 * Generated class for the ChatPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-chat',
  templateUrl: 'chat.html',
})

@Injectable()
export class ChatPage {
  message: { message: string } = {
    message: '',
  };
  
  response;  
  logchat: any[];
  constructor(public navCtrl: NavController, public navParams: NavParams,
    public translateService: TranslateService, public api: Api) {
    this.logchat = [
      {
        message: "Hola, hablas con Watson"
      }
    ]
    this.translateService.get('LOGIN_ERROR').subscribe((value) => {
    })
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ChatPage');

  }
  
  send() {
    let msj = { message: this.message.message };
    this.logchat.push(msj);

    this.api.get("watsons/?message=" + this.message.message).subscribe(
      (data) => {
        msj = { message: data['output'].generic[0].text};
        this.logchat.push(msj);
        this.message.message = '';
        
      },
      (error) => {
        console.log(error);
      }
    )
      console.log(this.logchat);
  }

}
