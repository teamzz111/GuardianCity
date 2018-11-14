import { HomePage } from './../home/home';
import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DenunciaPage } from './denuncia';
import { TranslateModule } from '@ngx-translate/core';


@NgModule({
  declarations: [
    DenunciaPage
  ],
  imports: [
    IonicPageModule.forChild(DenunciaPage),
    TranslateModule.forChild()
  ],
})
export class DenunciaPageModule {}
