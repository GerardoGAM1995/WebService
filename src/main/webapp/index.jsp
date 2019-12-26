<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
<!-- Optional: include a polyfill for ES6 Promises for IE11 and Android browser -->
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>


<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script>
var app = angular.module("myShoppingList", []); 
app.controller("myCtrl", function($scope) {
    $scope.products = [{"name": "Milk", "animal":"rabit" },{"name":"Bread","animal":"dog"},{"name":"Cheese","animal":"mouse"} ];
    $scope.addItem = function () {
        $scope.errortext = "";
        if (!$scope.addMe) {return;}
        if ($scope.products.indexOf($scope.addMe) == -1) {
            $scope.products.push($scope.addMe);
        } else {
            $scope.errortext = "The item is already in your shopping list.";
        }
    }
    $scope.removeItem = function (x) {
        $scope.errortext = "";    
        $scope.products.splice(x, 1);
    }
});
</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>holi</title>
</head>
<body>
<div>
	Prueba de acentos UTF-8
	
	atención con este netodo 
	oración
	qué
	sería 
</div>
<div ng-app="myShoppingList" ng-cloak ng-controller="myCtrl" class="w3-card-2 w3-margin" style="max-width:400px;">
  
  <ul class="w3-ul">
    <li ng-repeat="x in products" class="w3-padding-16">{{x.name}} {{x.animal}}<span ng-click="removeItem($index)" style="cursor:pointer;" class="w3-right w3-margin-right">×</span></li>
     <li ng-repeat="x in products" class="w3-padding-16">{{x.animal}}<span ng-click="removeItem($index)" style="cursor:pointer;" class="w3-right w3-margin-right">×</span></li>
  </ul>
</div>
<script type="text/javascript">
	var obj = {
			  "amount": 1.45,
			  "billing": {
			    "address": {
			      "city": "Mexico",
			      "country": "MEX",
			      "postcodeZip": "55268",
			      "stateProvince": "Mexico",
			      "street": "otoño esteril, cuarto poder"
			    }
			  },
			  "chargeback": {
			    "amount": 0,
			    "currency": "MXN"
			  },
			  "creationTime": "2019-09-19T20:25:02.029Z",
			  "currency": "MXN",
			  "customer": {
			    "firstName": "Mario",
			    "lastName": "Vidal"
			  },
			  "description": "Gracias por su compra",
			  "device": {
			    "browser": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36",
			    "ipAddress": "200.52.87.150"
			  },
			  "id": "114307",
			  "merchant": "1113820BP",
			  "merchantCategoryCode": "5045",
			  "result": "SUCCESS",
			  "transaction	": {
			    "provided": {
			      "card": {
			        "brand": "MASTERCARD",
			        "expiry": {
			          "month": "12",
			          "year": "23"
			        },
			        "fundingMethod": "CREDIT",
			        "issuer": "BANCO INBURSA, S.A.",
			        "nameOnCard": "Mario Vidal",
			        "number": "527333xxxxxx6315",
			        "scheme": "MASTERCARD",
			        "storedOnFile": "NOT_STORED"
			      }
			    },
			    "type": "CARD"
			  },
			  "status": "CAPTURED",
			  "totalAuthorizedAmount": 1.45,
			  "totalCapturedAmount": 1.45,
			  "totalRefundedAmount": 0,
			  "transaction": [
			    {
			      "3DSecure": {
			        "acsEci": "01",
			        "authenticationToken": "htM5crqiLBgjYwAAwhO4CXIAAAA=",
			        "paResStatus": "A",
			        "veResEnrolled": "Y",
			        "xid": "YjZj5GG2mCTSbWpub5qdlWqkdd4="
			      },
			      "3DSecureId": "52762fdf-0daf-4a27-86a1-86f46bb6eb12",
			      "billing": {
			        "address": {
			          "city": "Mexico",
			          "country": "MEX",
			          "postcodeZip": "55268",
			          "stateProvince": "Mexico",
			          "street": "otoño esteril, cuarto poder"
			        }
			      },
			      "customer": {
			        "firstName": "Mario",
			        "lastName": "Vidal"
			      },
			      "device": {
			        "browser": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36",
			        "ipAddress": "200.52.87.150"
			      },
			      "gatewayEntryPoint": "CHECKOUT",
			      "merchant": "1113820BP2",
			      "order": {
			        "amount": 1.45,
			        "chargeback": {
			          "amount": 0,
			          "currency": "MXN"
			        },
			        "creationTime": "2019-09-19T20:25:02.029Z",
			        "currency": "MXN",
			        "description": "Gracias por su compra",
			        "id": "114307",
			        "merchantCategoryCode": "5045",
			        "status": "CAPTURED",
			        "totalAuthorizedAmount": 1.45,
			        "totalCapturedAmount": 1.45,
			        "totalRefundedAmount": 0
			      },
			      "response": {
			        "acquirerCode": "00",
			        "cardSecurityCode": {
			          "gatewayCode": "MATCH"
			        },
			        "gatewayCode": "APPROVED"
			      },
			      "result": "SUCCESS",
			      "sourceOfFunds": {
			        "provided": {
			          "card": {
			            "brand": "MASTERCARD",
			            "expiry": {
			              "month": "12",
			              "year": "23"
			            },
			            "fundingMethod": "CREDIT",
			            "issuer": "BANCO INBURSA, S.A.",
			            "nameOnCard": "Mario Vidal",
			            "number": "527333xxxxxx6315",
			            "scheme": "MASTERCARD",
			            "storedOnFile": "NOT_STORED"
			          }
			        },
			        "type": "CARD"
			      },
			      "timeOfRecord": "2019-09-19T20:25:02.029Z",
			      "transaction": {
			        "acquirer": {
			          "batch": 20190919,
			          "id": "EGLOBAL",
			          "merchantId": "1113820"
			        },
			        "amount": 1.45,
			        "authorizationCode": "401145",
			        "currency": "MXN",
			        "frequency": "SINGLE",
			        "id": "1",
			        "receipt": "926220001185",
			        "source": "INTERNET",
			        "terminal": "1234",
			        "type": "PAYMENT"
			      },
			      "version": "50"
			    }
			  ]
			};
	//alert(json.merchant);
	obj =JSON.stringify(obj.transaction).replace("[","").replace("]","")
	obj = JSON.parse(obj);
	alert("clave autorizacion  : " + obj.transaction.authorizationCode);
	alert("numero de tarjeta  : " + obj.sourceOfFunds.provided.card.number);
	//alert("tipo Tarjeta  : " + obj.sourceOfFunds.provided.card.brand);
	//alert("lote bancario  : " + obj.transaction.acquirer.batch);
	//alert("recibo  : " + obj.transaction.receipt);
</script>
</body>
</html>