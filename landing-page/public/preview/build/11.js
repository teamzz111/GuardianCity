webpackJsonp([11],{

/***/ 328:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AboutusPageModule", function() { return AboutusPageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(116);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__ngx_translate_core__ = __webpack_require__(117);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__aboutus__ = __webpack_require__(340);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};




var AboutusPageModule = /** @class */ (function () {
    function AboutusPageModule() {
    }
    AboutusPageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["I" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_3__aboutus__["a" /* AboutusPage */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["e" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_3__aboutus__["a" /* AboutusPage */]),
                __WEBPACK_IMPORTED_MODULE_2__ngx_translate_core__["b" /* TranslateModule */].forChild()
            ],
        })
    ], AboutusPageModule);
    return AboutusPageModule;
}());

//# sourceMappingURL=aboutus.module.js.map

/***/ }),

/***/ 340:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AboutusPage; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(116);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__ngx_translate_core__ = __webpack_require__(117);
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
 * Generated class for the AboutusPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var AboutusPage = /** @class */ (function () {
    function AboutusPage(navCtrl, navParams, translateService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.translateService = translateService;
    }
    AboutusPage.prototype.ionViewDidLoad = function () {
        console.log('ionViewDidLoad AboutusPage');
    };
    AboutusPage = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["m" /* Component */])({
            selector: 'page-aboutus',template:/*ion-inline-start:"C:\ULIBRE-061-grupo-2\GuardianCity\src\pages\aboutus\aboutus.html"*/'<!--\n\n  Generated template for the AboutusPage page.\n\n\n\n  See http://ionicframework.com/docs/components/#navigation for more info on\n\n  Ionic pages and navigation.\n\n-->\n\n<ion-header>\n\n\n\n  <ion-navbar>\n\n      <ion-navbar>\n\n          <ion-grid>\n\n            <ion-row>\n\n              <ion-col class="fontawesome">\n\n                <i class="fas fa-bars"></i>\n\n              </ion-col>\n\n              <ion-col style="text-align: center">\n\n                {{ \'APP_TITLE\' | translate}} <br>\n\n                <span> {{ \'TUTORIAL_SLIDE0_DESCRIPTION\' | translate}}\n\n      \n\n                </span>\n\n              </ion-col>\n\n              <ion-col>\n\n              </ion-col>\n\n            </ion-row>\n\n      \n\n      \n\n          </ion-grid>\n\n        </ion-navbar>\n\n  </ion-navbar>\n\n\n\n</ion-header>\n\n\n\n\n\n<ion-content>\n\n  <div class="padre">\n\n    <h1>CONTRIBUIDORES</h1>\n\n    <div class="largo">\n\n        <img src="../../assets/img/contribuidores/largo.png">\n\n        <p>Andres Largo</p>  \n\n        <p>Desarrollador y diseñador</p>\n\n    </div>\n\n    <div class="infante">\n\n        <img src="../../assets/img/contribuidores/infante.jpg">\n\n        <p>Erika Infante</p>  \n\n        <p>Desarrolladora y diseñadora</p>\n\n    </div>\n\n    <div class="orjuela">\n\n        <img src="../../assets/img/contribuidores/orjuela.jpg">\n\n        <p>Miguel Orjuela</p>  \n\n        <p>Desarrollador y diseñador</p>\n\n    </div>\n\n    <div class="pp">\n\n        <img src="../../assets/img/contribuidores/pp.jpg">\n\n        <p>Yullián Cárdenas</p>  \n\n        <p>Desarrollador y diseñador</p>\n\n    </div>\n\n  </div>\n\n  <div class="informacion">\n\n    <h1>INFORMACIÓN</h1>\n\n    <img src="../../assets/img/LOGOS/logo.png">\n\n    <p>Proyecto Fedesoft</p>\n\n    <p>Universidad libre</p>\n\n    <p>Repositorio github</p>\n\n    <p>Ionic v6</p>\n\n  </div>\n\n</ion-content>\n\n'/*ion-inline-end:"C:\ULIBRE-061-grupo-2\GuardianCity\src\pages\aboutus\aboutus.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["h" /* NavController */], __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["i" /* NavParams */], __WEBPACK_IMPORTED_MODULE_2__ngx_translate_core__["c" /* TranslateService */]])
    ], AboutusPage);
    return AboutusPage;
}());

//# sourceMappingURL=aboutus.js.map

/***/ })

});
//# sourceMappingURL=11.js.map