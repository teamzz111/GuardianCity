
import { Component, ViewChild } from '@angular/core';
import { SplashScreen } from '@ionic-native/splash-screen';
import { StatusBar } from '@ionic-native/status-bar';
import { TranslateService } from '@ngx-translate/core';
import { Config, Nav, Platform } from 'ionic-angular';

import { FirstRunPage } from '../pages';
import { Settings } from '../providers';

@Component({ 
  template: `<ion-menu [content]="content" style="background: transparent">
    <ion-header style="background: transparent"> 
      <ion-toolbar style="background: transparent">
        <ion-title>Guardian City <i class="fas fa-times-circle" style="float: right" menuToggle></i></ion-title>
      </ion-toolbar>
    </ion-header>

    <ion-content style="background: transparent">
      <ion-list style="background: transparent">
        <button menuClose ion-item *ngFor="let p of menubar" (click)="openPage(p)">
          {{p.title}}
        </button>
      </ion-list>
    </ion-content>

  </ion-menu>
  <ion-nav #content [root]="rootPage"></ion-nav>`
})
export class MyApp {
  rootPage = FirstRunPage;

  @ViewChild(Nav) nav: Nav;
  
  menubar: any[] = [
    { title: 'Inicio', component: 'HomePage' },
    { title: 'Crear denuncia', component: 'DenunciaPage'},
    { title: '¿Necesitas ayuda?', component: 'ChatPage' },
    { title: 'Cierra sesión', component: 'LoginPage' }
  ]

  constructor(private translate: TranslateService, platform: Platform, settings: Settings, private config: Config, private statusBar: StatusBar, private splashScreen: SplashScreen) {
    platform.ready().then(() => {
      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      this.statusBar.styleDefault();
      
    });
    this.initTranslate();

  }

  initTranslate() {
    // Set the default language for translation strings, and the current language.
    this.translate.setDefaultLang('es');
    const browserLang = this.translate.getBrowserLang();

    if (browserLang) {
      if (browserLang === 'zh') {
        const browserCultureLang = this.translate.getBrowserCultureLang();

        if (browserCultureLang.match(/-CN|CHS|Hans/i)) {
          this.translate.use('zh-cmn-Hans');
        } else if (browserCultureLang.match(/-TW|CHT|Hant/i)) {
          this.translate.use('zh-cmn-Hant');
        }
      } else {
        this.translate.use(this.translate.getBrowserLang());
      }
    } else {
      this.translate.use('es'); // Set your language here
    }

    this.translate.get(['BACK_BUTTON_TEXT']).subscribe(values => {
      this.config.set('ios', 'backButtonText', values.BACK_BUTTON_TEXT);
    });
  }

  openPage(page) {
    this.statusBar.overlaysWebView(true);

    // set status bar to white

    this.statusBar.backgroundColorByHexString('#0599ca');
    // Reset the content nav to have just this page
    // we wouldn't want the back button to show in this scenario
    this.nav.setRoot(page.component);
  }
}
