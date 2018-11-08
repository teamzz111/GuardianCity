webpackJsonp([3],{

/***/ 336:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SignupPageModule", function() { return SignupPageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__ngx_translate_core__ = __webpack_require__(117);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_ionic_angular__ = __webpack_require__(116);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__signup__ = __webpack_require__(348);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};




var SignupPageModule = /** @class */ (function () {
    function SignupPageModule() {
    }
    SignupPageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["I" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_3__signup__["a" /* SignupPage */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_2_ionic_angular__["e" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_3__signup__["a" /* SignupPage */]),
                __WEBPACK_IMPORTED_MODULE_1__ngx_translate_core__["b" /* TranslateModule */].forChild()
            ],
            exports: [
                __WEBPACK_IMPORTED_MODULE_3__signup__["a" /* SignupPage */]
            ]
        })
    ], SignupPageModule);
    return SignupPageModule;
}());

//# sourceMappingURL=signup.module.js.map

/***/ }),

/***/ 343:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return HomePage; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(116);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__ngx_translate_core__ = __webpack_require__(117);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers__ = __webpack_require__(118);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




/**
 * Generated class for the HomePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var HomePage = /** @class */ (function () {
    function HomePage(navCtrl, navParams, translateService, api) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.translateService = translateService;
        this.api = api;
    }
    HomePage.prototype.ionViewDidLoad = function () {
        var _this = this;
        this.api.get("denuncia.json").subscribe(function (data) {
            _this.denuncias = data;
            console.log(data);
        }, function (error) {
            console.error(error);
        });
    };
    HomePage = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["m" /* Component */])({
            selector: 'page-home',template:/*ion-inline-start:"C:\ULIBRE-061-grupo-2\GuardianCity\src\pages\home\home.html"*/'<ion-header>\n\n\n\n  <ion-navbar>\n\n    <ion-grid>\n\n      <ion-row>\n\n        <ion-col class="fontawesome">\n\n          <i class="fas fa-bars" menuToggle></i>\n\n        </ion-col>\n\n        <ion-col style="text-align: center">\n\n          {{ \'APP_TITLE\' | translate}} <br>\n\n          <span> {{ \'TUTORIAL_SLIDE0_DESCRIPTION\' | translate}}\n\n\n\n          </span>\n\n        </ion-col>\n\n        <ion-col>\n\n        </ion-col>\n\n      </ion-row>\n\n\n\n\n\n    </ion-grid>\n\n  </ion-navbar>\n\n\n\n</ion-header>\n\n\n\n\n\n<ion-content>\n\n  <h2>A DENUNCIAR!</h2>\n\n  <button class = "denuncia">\n\n    CREAR NUEVA DENUNCIA    \n\n  </button>\n\n  <div class="tabla">\n\n    <h2>DENUNCIAS RECIENTES</h2>\n\n    <table>\n\n      <thead>\n\n        <tr>\n\n          <td>ID</td>\n\n          <td>BARRIO</td>\n\n          <td>LOCALIDAD</td>\n\n          <td>TIPO</td>\n\n          <td>FECHA</td>\n\n          <td>DESCRIPCIÓN</td>\n\n        </tr>\n\n      </thead>\n\n      <tr *ngFor = "let i of denuncias">\n\n        <td>{{i.id}}</td>\n\n        <td>{{i.usuario_cedula}}</td>\n\n        <td>{{i.tipo_denuncia}}</td>\n\n        <td>{{i.zona}}</td>\n\n        <td>{{i.fecha}}</td>\n\n        <td>{{i.descripcion_asalto}}</td>\n\n        \n\n      </tr>\n\n    </table>\n\n  </div>\n\n</ion-content>\n\n'/*ion-inline-end:"C:\ULIBRE-061-grupo-2\GuardianCity\src\pages\home\home.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["h" /* NavController */], __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["i" /* NavParams */], __WEBPACK_IMPORTED_MODULE_2__ngx_translate_core__["c" /* TranslateService */],
            __WEBPACK_IMPORTED_MODULE_3__providers__["a" /* Api */]])
    ], HomePage);
    return HomePage;
}());

//# sourceMappingURL=home.js.map

/***/ }),

/***/ 348:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return SignupPage; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__home_home__ = __webpack_require__(343);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__ngx_translate_core__ = __webpack_require__(117);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(116);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers__ = __webpack_require__(118);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var SignupPage = /** @class */ (function () {
    function SignupPage(navCtrl, user, toastCtrl, translateService) {
        var _this = this;
        this.navCtrl = navCtrl;
        this.user = user;
        this.toastCtrl = toastCtrl;
        this.translateService = translateService;
        // The account fields for the login form.
        // If you're using the username field with or without email, make
        // sure to add it to the type
        this.account = {
            id_cc: '1069580300',
            password1: 'test',
            password2: 'test',
            f_name: 'Juan',
            l_name: 'Torres'
        };
        this.translateService.get('SIGNUP_ERROR').subscribe(function (value) {
            _this.signupErrorString = value;
        });
    }
    SignupPage.prototype.doSignup = function () {
        var _this = this;
        // Attempt to login in through our User service
        this.user.signup(this.account).subscribe(function (resp) {
            _this.navCtrl.push(__WEBPACK_IMPORTED_MODULE_0__home_home__["a" /* HomePage */]);
        }, function (err) {
            _this.navCtrl.push(__WEBPACK_IMPORTED_MODULE_0__home_home__["a" /* HomePage */]);
            // Unable to sign up
            var toast = _this.toastCtrl.create({
                message: _this.signupErrorString,
                duration: 3000,
                position: 'top'
            });
            toast.present();
        });
    };
    SignupPage.prototype.tutorialApp = function () {
        this.navCtrl.setRoot('TutorialPage', {}, {
            animate: true,
            direction: 'forward'
        });
    };
    SignupPage = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["m" /* Component */])({
            selector: 'page-signup',template:/*ion-inline-start:"C:\ULIBRE-061-grupo-2\GuardianCity\src\pages\signup\signup.html"*/'<ion-header>\n\n\n\n  <ion-navbar>\n\n      <ion-grid>\n\n          <ion-row>\n\n            <ion-col class = "fontawesome">\n\n                <i class="fas fa-arrow-left" (click)="tutorialApp()"></i>\n\n            </ion-col>\n\n            <ion-col style = "text-align: center">\n\n              {{ \'APP_TITLE\' | translate}} <br>\n\n              <span>   {{ \'TUTORIAL_SLIDE0_DESCRIPTION\' | translate}}\n\n                \n\n              </span>\n\n            </ion-col>\n\n            <ion-col>\n\n            </ion-col>\n\n          </ion-row>\n\n        </ion-grid>\n\n</ion-navbar>\n\n\n\n</ion-header>\n\n\n\n\n\n<ion-content>\n\n  <form (submit)="doSignup()">\n\n    <h2>INICIA SESIÓN</h2>\n\n    <ion-list>\n\n\n\n      <ion-item class = "list_item">\n\n        <ion-label><i class="fas fa-id-card"></i></ion-label>\n\n        <ion-input type="text" [(ngModel)]="account.id_cc" name="id_cc"></ion-input>\n\n      </ion-item>\n\n\n\n      <ion-item class = "list_item">\n\n        <ion-label><i class="fas fa-key"></i></ion-label>\n\n        <ion-input type="password" [(ngModel)]="account.password1" name="password1"></ion-input>\n\n      </ion-item>\n\n\n\n      <ion-item class = "list_item">\n\n        <ion-label><i class="fas fa-key"></i></ion-label>\n\n        <ion-input type="password" [(ngModel)]="account.password2" name="password2"></ion-input>\n\n      </ion-item>\n\n\n\n      <ion-item class = "list_item">\n\n        <ion-label><i class="fas fa-user"></i></ion-label>\n\n        <ion-input type="text" [(ngModel)]="account.f_name" name="f_name" aria-placeholder="test"></ion-input>\n\n      </ion-item>\n\n\n\n      <ion-item class = "list_item">\n\n        <ion-label><i class="fas fa-user"></i></ion-label>\n\n        <ion-input type="text" [(ngModel)]="account.l_name" name="l_name"></ion-input>\n\n      </ion-item>\n\n\n\n      <div padding>\n\n        <button ion-button color="primary" block>{{ \'SIGNUP_GO\' | translate }}</button>\n\n      </div>\n\n\n\n    </ion-list>\n\n  </form>\n\n</ion-content>\n\n\n\n'/*ion-inline-end:"C:\ULIBRE-061-grupo-2\GuardianCity\src\pages\signup\signup.html"*/
        }),
        __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* NavController */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* NavController */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_4__providers__["d" /* User */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__providers__["d" /* User */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["k" /* ToastController */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["k" /* ToastController */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_2__ngx_translate_core__["c" /* TranslateService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__ngx_translate_core__["c" /* TranslateService */]) === "function" && _d || Object])
    ], SignupPage);
    return SignupPage;
    var _a, _b, _c, _d;
}());

//# sourceMappingURL=signup.js.map

/***/ })

});
//# sourceMappingURL=3.js.map