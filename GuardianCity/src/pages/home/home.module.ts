import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { TranslateModule } from '@ngx-translate/core';
import { HomePage } from './home';
import { DenunciaPage } from '../denuncia/denuncia';
@NgModule({
  declarations: [
    HomePage,
    DenunciaPage
  ],
  imports: [
    IonicPageModule.forChild(HomePage),
    TranslateModule.forChild(),
  ],
  exports: [
    HomePage,
    DenunciaPage
  ]
})
export class HomePageModule {}
