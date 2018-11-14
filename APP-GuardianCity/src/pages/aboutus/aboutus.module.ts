import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { TranslateModule } from '@ngx-translate/core';
import { AboutusPage } from './aboutus';

@NgModule({
  declarations: [
    AboutusPage,
  ],
  imports: [
    IonicPageModule.forChild(AboutusPage),
    TranslateModule.forChild()
  ],
})
export class AboutusPageModule {}
