import { HomePage } from './../home/home';
import { Component } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { IonicPage, NavController, ToastController } from 'ionic-angular';

import { User } from '../../providers';
import { MainPage } from '../';

@IonicPage()
@Component({
  selector: 'page-signup',
  templateUrl: 'signup.html'
})
export class SignupPage {
  // The account fields for the login form.
  // If you're using the username field with or without email, make
  // sure to add it to the type
  account: { id_cc: string, password1: string, password2: string, f_name: string, l_name: string  } = {
    id_cc: '1069580300',
    password1: 'test',
    password2: 'test',
    f_name: 'Juan',
    l_name: 'Torres'
  };

  // Our translated text strings
  private signupErrorString: string;

  constructor(public navCtrl: NavController,
    public user: User,
    public toastCtrl: ToastController,
    public translateService: TranslateService) {

    this.translateService.get('SIGNUP_ERROR').subscribe((value) => {
      this.signupErrorString = value;
    })
  }

  doSignup() {
    this.navCtrl.setRoot('HomePage', {}, {
      animate: true,
      direction: 'forward'
    });/*
    this.user.login(this.account).subscribe((resp) => {

    }, (err) => {
      this.navCtrl.setRoot('HomePage', {}, {
        animate: true,
        direction: 'forward'
      });
      // Unable to log in
      let toast = this.toastCtrl.create({
        message: this.signupErrorString,
        duration: 3000,
        position: 'top'
      });
      toast.present();
    });*/
  }

  tutorialApp(){
    this.navCtrl.setRoot('TutorialPage', {}, {
      animate: true,
      direction: 'forward'
    });
  }
}
