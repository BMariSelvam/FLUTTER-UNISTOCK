import 'dart:convert';
/// CompanyID : "1              "
/// Name : "AJMIR STORE PTE LTD"
/// Address1 : "10 JURONG EAST ST 12 #01-03                       "
/// Address2 : "JURONG EAST MRT                                   "
/// City : "SINGAPORE                                         "
/// State : "                                                  "
/// Country : "SINGAPORE-609690                                  "
/// PostalCode : "          "
/// Phone : "67287615                           "
/// Fax : "               "
/// Email : "                                                  "
/// Url : "                                                  "
/// LocationCode : "JP"
/// MainLocationCode : "JP"
/// BRNNo : ""
/// GSTRegNo : "                         "
/// NextMailID : null
/// NextPosNo : null
/// NextInvoice : null
/// GstPerc : 8
/// GstType : "I"
/// DisplayMessage1 : null
/// DisplayMessage2 : null
/// DisplayComport : null
/// NextPaymentVoucherNo : null
/// NextPosCreditNo : null
/// NextReciptNo : null
/// NextAvilableRange : null
/// NextTransNo : null
/// MaxDiscountAllowed : null
/// MaxPriceChangeAllowed : null
/// BarCodeCOMPort : null
/// ExpiredTime : null
/// NextPONo : null
/// NextGIDNo : null
/// NextAverageCostPercentage : null
/// TaxIN : null
/// NextTransferNo : null
/// NextEODDate : null
/// NextPurchaseno : null
/// NextPurReNo : null
/// NextDmgReNo : null
/// SalesReturnRefNo : null
/// TaxTaken : null
/// HQTransNo : null
/// BillPrint : null
/// UseSalesQty : null
/// Remarks : null
/// CompanyShortCode : null
/// POOffReqNo : null
/// SalesReturnReqNo : null
/// NextPendingNo : null
/// NextStkTakeAdjNo : null
/// Version : null
/// NextStkAdjNo : null
/// NextCustSONo : null
/// DistributionNo : null
/// PRReqNo : null
/// NextDmgStkTakeAdjNo : null
/// FaxServer : null
/// StockClosingDt : null
/// NextSONo : null
/// NextDONo : null
/// CreateUser : null
/// CreateDate : null
/// ModifyUser : null
/// ModifyDate : null
/// NextPCNo : null
/// LastLogStkTakeDate : null
/// NextMemPointAdjNo : null
/// GrossProfit : null
/// PCReqNo : null
/// NextDGIDNo : null
/// NextConsNo : null
/// NextConsRetnNo : null
/// NextGSTRefundNo : null
/// NextPOSSettleNo : null
/// POSVersion : null
/// ExPensesNo : null
/// NextECRNo : null
/// NextMarginAnalysedNo : null
/// SRReqNo : null
/// NextConReqNo : null
/// NextTranHoldNo : null
/// NextMemberNo : null
/// NextPkgSalesNo : null
/// NextDepositNo : null
/// NextGIDHoldNo : null
/// PurchaseGstType : null
/// CreditSalesGstType : null
/// NextPaymentNo : null
/// NextCreditNoteNo : null
/// NextDebitNoteNo : null
/// NextReceiptNo : null
/// NextPurInvoiceNo : null
/// NextAppointmentNo : null
/// NextToCreateNo : null
/// NextTIAcceptNo : null
/// UASACVersion : null
/// EODDate : null
/// NextMMRunningNo : null
/// PrintPRMInReceipt : null
/// VersionType : null
/// MainLocationVersionType : null
/// NextSupplierInvoiceNo : null
/// NextCustomerCreditNoteNo : null
/// ChatMessageNo : null
/// BinTransferNO : null
/// NextAmkHubMgtNo : null
/// Server : null
/// DisplayName : null
/// FromEmailId : null
/// Password : null
/// MinBillvalue : null
/// ManagementCode : null
/// NextSerialTranNo : null
/// NextTransferHoldNo : null
/// NextMemberChildNo : null
/// PortNo : null
/// IsSSLRequired : null
/// ValidateDate : null
/// EncryptKey : null
/// LicIntegration : null

CompanyModel companyModelFromJson(String str) => CompanyModel.fromJson(json.decode(str));
String companyModelToJson(CompanyModel data) => json.encode(data.toJson());
class CompanyModel {
  CompanyModel({
      String? companyID, 
      String? name, 
      String? address1, 
      String? address2, 
      String? city, 
      String? state, 
      String? country, 
      String? postalCode, 
      String? phone, 
      String? fax, 
      String? email, 
      String? url, 
      String? locationCode, 
      String? mainLocationCode, 
      String? bRNNo, 
      String? gSTRegNo, 
      dynamic nextMailID, 
      dynamic nextPosNo, 
      dynamic nextInvoice, 
      num? gstPerc, 
      String? gstType, 
      dynamic displayMessage1, 
      dynamic displayMessage2, 
      dynamic displayComport, 
      dynamic nextPaymentVoucherNo, 
      dynamic nextPosCreditNo, 
      dynamic nextReciptNo, 
      dynamic nextAvilableRange, 
      dynamic nextTransNo, 
      dynamic maxDiscountAllowed, 
      dynamic maxPriceChangeAllowed, 
      dynamic barCodeCOMPort, 
      dynamic expiredTime, 
      dynamic nextPONo, 
      dynamic nextGIDNo, 
      dynamic nextAverageCostPercentage, 
      dynamic taxIN, 
      dynamic nextTransferNo, 
      dynamic nextEODDate, 
      dynamic nextPurchaseno, 
      dynamic nextPurReNo, 
      dynamic nextDmgReNo, 
      dynamic salesReturnRefNo, 
      dynamic taxTaken, 
      dynamic hQTransNo, 
      dynamic billPrint, 
      dynamic useSalesQty, 
      dynamic remarks, 
      dynamic companyShortCode, 
      dynamic pOOffReqNo, 
      dynamic salesReturnReqNo, 
      dynamic nextPendingNo, 
      dynamic nextStkTakeAdjNo, 
      dynamic version, 
      dynamic nextStkAdjNo, 
      dynamic nextCustSONo, 
      dynamic distributionNo, 
      dynamic pRReqNo, 
      dynamic nextDmgStkTakeAdjNo, 
      dynamic faxServer, 
      dynamic stockClosingDt, 
      dynamic nextSONo, 
      dynamic nextDONo, 
      dynamic createUser, 
      dynamic createDate, 
      dynamic modifyUser, 
      dynamic modifyDate, 
      dynamic nextPCNo, 
      dynamic lastLogStkTakeDate, 
      dynamic nextMemPointAdjNo, 
      dynamic grossProfit, 
      dynamic pCReqNo, 
      dynamic nextDGIDNo, 
      dynamic nextConsNo, 
      dynamic nextConsRetnNo, 
      dynamic nextGSTRefundNo, 
      dynamic nextPOSSettleNo, 
      dynamic pOSVersion, 
      dynamic exPensesNo, 
      dynamic nextECRNo, 
      dynamic nextMarginAnalysedNo, 
      dynamic sRReqNo, 
      dynamic nextConReqNo, 
      dynamic nextTranHoldNo, 
      dynamic nextMemberNo, 
      dynamic nextPkgSalesNo, 
      dynamic nextDepositNo, 
      dynamic nextGIDHoldNo, 
      dynamic purchaseGstType, 
      dynamic creditSalesGstType, 
      dynamic nextPaymentNo, 
      dynamic nextCreditNoteNo, 
      dynamic nextDebitNoteNo, 
      dynamic nextReceiptNo, 
      dynamic nextPurInvoiceNo, 
      dynamic nextAppointmentNo, 
      dynamic nextToCreateNo, 
      dynamic nextTIAcceptNo, 
      dynamic uASACVersion, 
      dynamic eODDate, 
      dynamic nextMMRunningNo, 
      dynamic printPRMInReceipt, 
      dynamic versionType, 
      dynamic mainLocationVersionType, 
      dynamic nextSupplierInvoiceNo, 
      dynamic nextCustomerCreditNoteNo, 
      dynamic chatMessageNo, 
      dynamic binTransferNO, 
      dynamic nextAmkHubMgtNo, 
      dynamic server, 
      dynamic displayName, 
      dynamic fromEmailId, 
      dynamic password, 
      dynamic minBillvalue, 
      dynamic managementCode, 
      dynamic nextSerialTranNo, 
      dynamic nextTransferHoldNo, 
      dynamic nextMemberChildNo, 
      dynamic portNo, 
      dynamic isSSLRequired, 
      dynamic validateDate, 
      dynamic encryptKey, 
      dynamic licIntegration,}){
    _companyID = companyID;
    _name = name;
    _address1 = address1;
    _address2 = address2;
    _city = city;
    _state = state;
    _country = country;
    _postalCode = postalCode;
    _phone = phone;
    _fax = fax;
    _email = email;
    _url = url;
    _locationCode = locationCode;
    _mainLocationCode = mainLocationCode;
    _bRNNo = bRNNo;
    _gSTRegNo = gSTRegNo;
    _nextMailID = nextMailID;
    _nextPosNo = nextPosNo;
    _nextInvoice = nextInvoice;
    _gstPerc = gstPerc;
    _gstType = gstType;
    _displayMessage1 = displayMessage1;
    _displayMessage2 = displayMessage2;
    _displayComport = displayComport;
    _nextPaymentVoucherNo = nextPaymentVoucherNo;
    _nextPosCreditNo = nextPosCreditNo;
    _nextReciptNo = nextReciptNo;
    _nextAvilableRange = nextAvilableRange;
    _nextTransNo = nextTransNo;
    _maxDiscountAllowed = maxDiscountAllowed;
    _maxPriceChangeAllowed = maxPriceChangeAllowed;
    _barCodeCOMPort = barCodeCOMPort;
    _expiredTime = expiredTime;
    _nextPONo = nextPONo;
    _nextGIDNo = nextGIDNo;
    _nextAverageCostPercentage = nextAverageCostPercentage;
    _taxIN = taxIN;
    _nextTransferNo = nextTransferNo;
    _nextEODDate = nextEODDate;
    _nextPurchaseno = nextPurchaseno;
    _nextPurReNo = nextPurReNo;
    _nextDmgReNo = nextDmgReNo;
    _salesReturnRefNo = salesReturnRefNo;
    _taxTaken = taxTaken;
    _hQTransNo = hQTransNo;
    _billPrint = billPrint;
    _useSalesQty = useSalesQty;
    _remarks = remarks;
    _companyShortCode = companyShortCode;
    _pOOffReqNo = pOOffReqNo;
    _salesReturnReqNo = salesReturnReqNo;
    _nextPendingNo = nextPendingNo;
    _nextStkTakeAdjNo = nextStkTakeAdjNo;
    _version = version;
    _nextStkAdjNo = nextStkAdjNo;
    _nextCustSONo = nextCustSONo;
    _distributionNo = distributionNo;
    _pRReqNo = pRReqNo;
    _nextDmgStkTakeAdjNo = nextDmgStkTakeAdjNo;
    _faxServer = faxServer;
    _stockClosingDt = stockClosingDt;
    _nextSONo = nextSONo;
    _nextDONo = nextDONo;
    _createUser = createUser;
    _createDate = createDate;
    _modifyUser = modifyUser;
    _modifyDate = modifyDate;
    _nextPCNo = nextPCNo;
    _lastLogStkTakeDate = lastLogStkTakeDate;
    _nextMemPointAdjNo = nextMemPointAdjNo;
    _grossProfit = grossProfit;
    _pCReqNo = pCReqNo;
    _nextDGIDNo = nextDGIDNo;
    _nextConsNo = nextConsNo;
    _nextConsRetnNo = nextConsRetnNo;
    _nextGSTRefundNo = nextGSTRefundNo;
    _nextPOSSettleNo = nextPOSSettleNo;
    _pOSVersion = pOSVersion;
    _exPensesNo = exPensesNo;
    _nextECRNo = nextECRNo;
    _nextMarginAnalysedNo = nextMarginAnalysedNo;
    _sRReqNo = sRReqNo;
    _nextConReqNo = nextConReqNo;
    _nextTranHoldNo = nextTranHoldNo;
    _nextMemberNo = nextMemberNo;
    _nextPkgSalesNo = nextPkgSalesNo;
    _nextDepositNo = nextDepositNo;
    _nextGIDHoldNo = nextGIDHoldNo;
    _purchaseGstType = purchaseGstType;
    _creditSalesGstType = creditSalesGstType;
    _nextPaymentNo = nextPaymentNo;
    _nextCreditNoteNo = nextCreditNoteNo;
    _nextDebitNoteNo = nextDebitNoteNo;
    _nextReceiptNo = nextReceiptNo;
    _nextPurInvoiceNo = nextPurInvoiceNo;
    _nextAppointmentNo = nextAppointmentNo;
    _nextToCreateNo = nextToCreateNo;
    _nextTIAcceptNo = nextTIAcceptNo;
    _uASACVersion = uASACVersion;
    _eODDate = eODDate;
    _nextMMRunningNo = nextMMRunningNo;
    _printPRMInReceipt = printPRMInReceipt;
    _versionType = versionType;
    _mainLocationVersionType = mainLocationVersionType;
    _nextSupplierInvoiceNo = nextSupplierInvoiceNo;
    _nextCustomerCreditNoteNo = nextCustomerCreditNoteNo;
    _chatMessageNo = chatMessageNo;
    _binTransferNO = binTransferNO;
    _nextAmkHubMgtNo = nextAmkHubMgtNo;
    _server = server;
    _displayName = displayName;
    _fromEmailId = fromEmailId;
    _password = password;
    _minBillvalue = minBillvalue;
    _managementCode = managementCode;
    _nextSerialTranNo = nextSerialTranNo;
    _nextTransferHoldNo = nextTransferHoldNo;
    _nextMemberChildNo = nextMemberChildNo;
    _portNo = portNo;
    _isSSLRequired = isSSLRequired;
    _validateDate = validateDate;
    _encryptKey = encryptKey;
    _licIntegration = licIntegration;
}

  CompanyModel.fromJson(dynamic json) {
    _companyID = json['CompanyID'];
    _name = json['Name'];
    _address1 = json['Address1'];
    _address2 = json['Address2'];
    _city = json['City'];
    _state = json['State'];
    _country = json['Country'];
    _postalCode = json['PostalCode'];
    _phone = json['Phone'];
    _fax = json['Fax'];
    _email = json['Email'];
    _url = json['Url'];
    _locationCode = json['LocationCode'];
    _mainLocationCode = json['MainLocationCode'];
    _bRNNo = json['BRNNo'];
    _gSTRegNo = json['GSTRegNo'];
    _nextMailID = json['NextMailID'];
    _nextPosNo = json['NextPosNo'];
    _nextInvoice = json['NextInvoice'];
    _gstPerc = json['GstPerc'];
    _gstType = json['GstType'];
    _displayMessage1 = json['DisplayMessage1'];
    _displayMessage2 = json['DisplayMessage2'];
    _displayComport = json['DisplayComport'];
    _nextPaymentVoucherNo = json['NextPaymentVoucherNo'];
    _nextPosCreditNo = json['NextPosCreditNo'];
    _nextReciptNo = json['NextReciptNo'];
    _nextAvilableRange = json['NextAvilableRange'];
    _nextTransNo = json['NextTransNo'];
    _maxDiscountAllowed = json['MaxDiscountAllowed'];
    _maxPriceChangeAllowed = json['MaxPriceChangeAllowed'];
    _barCodeCOMPort = json['BarCodeCOMPort'];
    _expiredTime = json['ExpiredTime'];
    _nextPONo = json['NextPONo'];
    _nextGIDNo = json['NextGIDNo'];
    _nextAverageCostPercentage = json['NextAverageCostPercentage'];
    _taxIN = json['TaxIN'];
    _nextTransferNo = json['NextTransferNo'];
    _nextEODDate = json['NextEODDate'];
    _nextPurchaseno = json['NextPurchaseno'];
    _nextPurReNo = json['NextPurReNo'];
    _nextDmgReNo = json['NextDmgReNo'];
    _salesReturnRefNo = json['SalesReturnRefNo'];
    _taxTaken = json['TaxTaken'];
    _hQTransNo = json['HQTransNo'];
    _billPrint = json['BillPrint'];
    _useSalesQty = json['UseSalesQty'];
    _remarks = json['Remarks'];
    _companyShortCode = json['CompanyShortCode'];
    _pOOffReqNo = json['POOffReqNo'];
    _salesReturnReqNo = json['SalesReturnReqNo'];
    _nextPendingNo = json['NextPendingNo'];
    _nextStkTakeAdjNo = json['NextStkTakeAdjNo'];
    _version = json['Version'];
    _nextStkAdjNo = json['NextStkAdjNo'];
    _nextCustSONo = json['NextCustSONo'];
    _distributionNo = json['DistributionNo'];
    _pRReqNo = json['PRReqNo'];
    _nextDmgStkTakeAdjNo = json['NextDmgStkTakeAdjNo'];
    _faxServer = json['FaxServer'];
    _stockClosingDt = json['StockClosingDt'];
    _nextSONo = json['NextSONo'];
    _nextDONo = json['NextDONo'];
    _createUser = json['CreateUser'];
    _createDate = json['CreateDate'];
    _modifyUser = json['ModifyUser'];
    _modifyDate = json['ModifyDate'];
    _nextPCNo = json['NextPCNo'];
    _lastLogStkTakeDate = json['LastLogStkTakeDate'];
    _nextMemPointAdjNo = json['NextMemPointAdjNo'];
    _grossProfit = json['GrossProfit'];
    _pCReqNo = json['PCReqNo'];
    _nextDGIDNo = json['NextDGIDNo'];
    _nextConsNo = json['NextConsNo'];
    _nextConsRetnNo = json['NextConsRetnNo'];
    _nextGSTRefundNo = json['NextGSTRefundNo'];
    _nextPOSSettleNo = json['NextPOSSettleNo'];
    _pOSVersion = json['POSVersion'];
    _exPensesNo = json['ExPensesNo'];
    _nextECRNo = json['NextECRNo'];
    _nextMarginAnalysedNo = json['NextMarginAnalysedNo'];
    _sRReqNo = json['SRReqNo'];
    _nextConReqNo = json['NextConReqNo'];
    _nextTranHoldNo = json['NextTranHoldNo'];
    _nextMemberNo = json['NextMemberNo'];
    _nextPkgSalesNo = json['NextPkgSalesNo'];
    _nextDepositNo = json['NextDepositNo'];
    _nextGIDHoldNo = json['NextGIDHoldNo'];
    _purchaseGstType = json['PurchaseGstType'];
    _creditSalesGstType = json['CreditSalesGstType'];
    _nextPaymentNo = json['NextPaymentNo'];
    _nextCreditNoteNo = json['NextCreditNoteNo'];
    _nextDebitNoteNo = json['NextDebitNoteNo'];
    _nextReceiptNo = json['NextReceiptNo'];
    _nextPurInvoiceNo = json['NextPurInvoiceNo'];
    _nextAppointmentNo = json['NextAppointmentNo'];
    _nextToCreateNo = json['NextToCreateNo'];
    _nextTIAcceptNo = json['NextTIAcceptNo'];
    _uASACVersion = json['UASACVersion'];
    _eODDate = json['EODDate'];
    _nextMMRunningNo = json['NextMMRunningNo'];
    _printPRMInReceipt = json['PrintPRMInReceipt'];
    _versionType = json['VersionType'];
    _mainLocationVersionType = json['MainLocationVersionType'];
    _nextSupplierInvoiceNo = json['NextSupplierInvoiceNo'];
    _nextCustomerCreditNoteNo = json['NextCustomerCreditNoteNo'];
    _chatMessageNo = json['ChatMessageNo'];
    _binTransferNO = json['BinTransferNO'];
    _nextAmkHubMgtNo = json['NextAmkHubMgtNo'];
    _server = json['Server'];
    _displayName = json['DisplayName'];
    _fromEmailId = json['FromEmailId'];
    _password = json['Password'];
    _minBillvalue = json['MinBillvalue'];
    _managementCode = json['ManagementCode'];
    _nextSerialTranNo = json['NextSerialTranNo'];
    _nextTransferHoldNo = json['NextTransferHoldNo'];
    _nextMemberChildNo = json['NextMemberChildNo'];
    _portNo = json['PortNo'];
    _isSSLRequired = json['IsSSLRequired'];
    _validateDate = json['ValidateDate'];
    _encryptKey = json['EncryptKey'];
    _licIntegration = json['LicIntegration'];
  }
  String? _companyID;
  String? _name;
  String? _address1;
  String? _address2;
  String? _city;
  String? _state;
  String? _country;
  String? _postalCode;
  String? _phone;
  String? _fax;
  String? _email;
  String? _url;
  String? _locationCode;
  String? _mainLocationCode;
  String? _bRNNo;
  String? _gSTRegNo;
  dynamic _nextMailID;
  dynamic _nextPosNo;
  dynamic _nextInvoice;
  num? _gstPerc;
  String? _gstType;
  dynamic _displayMessage1;
  dynamic _displayMessage2;
  dynamic _displayComport;
  dynamic _nextPaymentVoucherNo;
  dynamic _nextPosCreditNo;
  dynamic _nextReciptNo;
  dynamic _nextAvilableRange;
  dynamic _nextTransNo;
  dynamic _maxDiscountAllowed;
  dynamic _maxPriceChangeAllowed;
  dynamic _barCodeCOMPort;
  dynamic _expiredTime;
  dynamic _nextPONo;
  dynamic _nextGIDNo;
  dynamic _nextAverageCostPercentage;
  dynamic _taxIN;
  dynamic _nextTransferNo;
  dynamic _nextEODDate;
  dynamic _nextPurchaseno;
  dynamic _nextPurReNo;
  dynamic _nextDmgReNo;
  dynamic _salesReturnRefNo;
  dynamic _taxTaken;
  dynamic _hQTransNo;
  dynamic _billPrint;
  dynamic _useSalesQty;
  dynamic _remarks;
  dynamic _companyShortCode;
  dynamic _pOOffReqNo;
  dynamic _salesReturnReqNo;
  dynamic _nextPendingNo;
  dynamic _nextStkTakeAdjNo;
  dynamic _version;
  dynamic _nextStkAdjNo;
  dynamic _nextCustSONo;
  dynamic _distributionNo;
  dynamic _pRReqNo;
  dynamic _nextDmgStkTakeAdjNo;
  dynamic _faxServer;
  dynamic _stockClosingDt;
  dynamic _nextSONo;
  dynamic _nextDONo;
  dynamic _createUser;
  dynamic _createDate;
  dynamic _modifyUser;
  dynamic _modifyDate;
  dynamic _nextPCNo;
  dynamic _lastLogStkTakeDate;
  dynamic _nextMemPointAdjNo;
  dynamic _grossProfit;
  dynamic _pCReqNo;
  dynamic _nextDGIDNo;
  dynamic _nextConsNo;
  dynamic _nextConsRetnNo;
  dynamic _nextGSTRefundNo;
  dynamic _nextPOSSettleNo;
  dynamic _pOSVersion;
  dynamic _exPensesNo;
  dynamic _nextECRNo;
  dynamic _nextMarginAnalysedNo;
  dynamic _sRReqNo;
  dynamic _nextConReqNo;
  dynamic _nextTranHoldNo;
  dynamic _nextMemberNo;
  dynamic _nextPkgSalesNo;
  dynamic _nextDepositNo;
  dynamic _nextGIDHoldNo;
  dynamic _purchaseGstType;
  dynamic _creditSalesGstType;
  dynamic _nextPaymentNo;
  dynamic _nextCreditNoteNo;
  dynamic _nextDebitNoteNo;
  dynamic _nextReceiptNo;
  dynamic _nextPurInvoiceNo;
  dynamic _nextAppointmentNo;
  dynamic _nextToCreateNo;
  dynamic _nextTIAcceptNo;
  dynamic _uASACVersion;
  dynamic _eODDate;
  dynamic _nextMMRunningNo;
  dynamic _printPRMInReceipt;
  dynamic _versionType;
  dynamic _mainLocationVersionType;
  dynamic _nextSupplierInvoiceNo;
  dynamic _nextCustomerCreditNoteNo;
  dynamic _chatMessageNo;
  dynamic _binTransferNO;
  dynamic _nextAmkHubMgtNo;
  dynamic _server;
  dynamic _displayName;
  dynamic _fromEmailId;
  dynamic _password;
  dynamic _minBillvalue;
  dynamic _managementCode;
  dynamic _nextSerialTranNo;
  dynamic _nextTransferHoldNo;
  dynamic _nextMemberChildNo;
  dynamic _portNo;
  dynamic _isSSLRequired;
  dynamic _validateDate;
  dynamic _encryptKey;
  dynamic _licIntegration;
CompanyModel copyWith({  String? companyID,
  String? name,
  String? address1,
  String? address2,
  String? city,
  String? state,
  String? country,
  String? postalCode,
  String? phone,
  String? fax,
  String? email,
  String? url,
  String? locationCode,
  String? mainLocationCode,
  String? bRNNo,
  String? gSTRegNo,
  dynamic nextMailID,
  dynamic nextPosNo,
  dynamic nextInvoice,
  num? gstPerc,
  String? gstType,
  dynamic displayMessage1,
  dynamic displayMessage2,
  dynamic displayComport,
  dynamic nextPaymentVoucherNo,
  dynamic nextPosCreditNo,
  dynamic nextReciptNo,
  dynamic nextAvilableRange,
  dynamic nextTransNo,
  dynamic maxDiscountAllowed,
  dynamic maxPriceChangeAllowed,
  dynamic barCodeCOMPort,
  dynamic expiredTime,
  dynamic nextPONo,
  dynamic nextGIDNo,
  dynamic nextAverageCostPercentage,
  dynamic taxIN,
  dynamic nextTransferNo,
  dynamic nextEODDate,
  dynamic nextPurchaseno,
  dynamic nextPurReNo,
  dynamic nextDmgReNo,
  dynamic salesReturnRefNo,
  dynamic taxTaken,
  dynamic hQTransNo,
  dynamic billPrint,
  dynamic useSalesQty,
  dynamic remarks,
  dynamic companyShortCode,
  dynamic pOOffReqNo,
  dynamic salesReturnReqNo,
  dynamic nextPendingNo,
  dynamic nextStkTakeAdjNo,
  dynamic version,
  dynamic nextStkAdjNo,
  dynamic nextCustSONo,
  dynamic distributionNo,
  dynamic pRReqNo,
  dynamic nextDmgStkTakeAdjNo,
  dynamic faxServer,
  dynamic stockClosingDt,
  dynamic nextSONo,
  dynamic nextDONo,
  dynamic createUser,
  dynamic createDate,
  dynamic modifyUser,
  dynamic modifyDate,
  dynamic nextPCNo,
  dynamic lastLogStkTakeDate,
  dynamic nextMemPointAdjNo,
  dynamic grossProfit,
  dynamic pCReqNo,
  dynamic nextDGIDNo,
  dynamic nextConsNo,
  dynamic nextConsRetnNo,
  dynamic nextGSTRefundNo,
  dynamic nextPOSSettleNo,
  dynamic pOSVersion,
  dynamic exPensesNo,
  dynamic nextECRNo,
  dynamic nextMarginAnalysedNo,
  dynamic sRReqNo,
  dynamic nextConReqNo,
  dynamic nextTranHoldNo,
  dynamic nextMemberNo,
  dynamic nextPkgSalesNo,
  dynamic nextDepositNo,
  dynamic nextGIDHoldNo,
  dynamic purchaseGstType,
  dynamic creditSalesGstType,
  dynamic nextPaymentNo,
  dynamic nextCreditNoteNo,
  dynamic nextDebitNoteNo,
  dynamic nextReceiptNo,
  dynamic nextPurInvoiceNo,
  dynamic nextAppointmentNo,
  dynamic nextToCreateNo,
  dynamic nextTIAcceptNo,
  dynamic uASACVersion,
  dynamic eODDate,
  dynamic nextMMRunningNo,
  dynamic printPRMInReceipt,
  dynamic versionType,
  dynamic mainLocationVersionType,
  dynamic nextSupplierInvoiceNo,
  dynamic nextCustomerCreditNoteNo,
  dynamic chatMessageNo,
  dynamic binTransferNO,
  dynamic nextAmkHubMgtNo,
  dynamic server,
  dynamic displayName,
  dynamic fromEmailId,
  dynamic password,
  dynamic minBillvalue,
  dynamic managementCode,
  dynamic nextSerialTranNo,
  dynamic nextTransferHoldNo,
  dynamic nextMemberChildNo,
  dynamic portNo,
  dynamic isSSLRequired,
  dynamic validateDate,
  dynamic encryptKey,
  dynamic licIntegration,
}) => CompanyModel(  companyID: companyID ?? _companyID,
  name: name ?? _name,
  address1: address1 ?? _address1,
  address2: address2 ?? _address2,
  city: city ?? _city,
  state: state ?? _state,
  country: country ?? _country,
  postalCode: postalCode ?? _postalCode,
  phone: phone ?? _phone,
  fax: fax ?? _fax,
  email: email ?? _email,
  url: url ?? _url,
  locationCode: locationCode ?? _locationCode,
  mainLocationCode: mainLocationCode ?? _mainLocationCode,
  bRNNo: bRNNo ?? _bRNNo,
  gSTRegNo: gSTRegNo ?? _gSTRegNo,
  nextMailID: nextMailID ?? _nextMailID,
  nextPosNo: nextPosNo ?? _nextPosNo,
  nextInvoice: nextInvoice ?? _nextInvoice,
  gstPerc: gstPerc ?? _gstPerc,
  gstType: gstType ?? _gstType,
  displayMessage1: displayMessage1 ?? _displayMessage1,
  displayMessage2: displayMessage2 ?? _displayMessage2,
  displayComport: displayComport ?? _displayComport,
  nextPaymentVoucherNo: nextPaymentVoucherNo ?? _nextPaymentVoucherNo,
  nextPosCreditNo: nextPosCreditNo ?? _nextPosCreditNo,
  nextReciptNo: nextReciptNo ?? _nextReciptNo,
  nextAvilableRange: nextAvilableRange ?? _nextAvilableRange,
  nextTransNo: nextTransNo ?? _nextTransNo,
  maxDiscountAllowed: maxDiscountAllowed ?? _maxDiscountAllowed,
  maxPriceChangeAllowed: maxPriceChangeAllowed ?? _maxPriceChangeAllowed,
  barCodeCOMPort: barCodeCOMPort ?? _barCodeCOMPort,
  expiredTime: expiredTime ?? _expiredTime,
  nextPONo: nextPONo ?? _nextPONo,
  nextGIDNo: nextGIDNo ?? _nextGIDNo,
  nextAverageCostPercentage: nextAverageCostPercentage ?? _nextAverageCostPercentage,
  taxIN: taxIN ?? _taxIN,
  nextTransferNo: nextTransferNo ?? _nextTransferNo,
  nextEODDate: nextEODDate ?? _nextEODDate,
  nextPurchaseno: nextPurchaseno ?? _nextPurchaseno,
  nextPurReNo: nextPurReNo ?? _nextPurReNo,
  nextDmgReNo: nextDmgReNo ?? _nextDmgReNo,
  salesReturnRefNo: salesReturnRefNo ?? _salesReturnRefNo,
  taxTaken: taxTaken ?? _taxTaken,
  hQTransNo: hQTransNo ?? _hQTransNo,
  billPrint: billPrint ?? _billPrint,
  useSalesQty: useSalesQty ?? _useSalesQty,
  remarks: remarks ?? _remarks,
  companyShortCode: companyShortCode ?? _companyShortCode,
  pOOffReqNo: pOOffReqNo ?? _pOOffReqNo,
  salesReturnReqNo: salesReturnReqNo ?? _salesReturnReqNo,
  nextPendingNo: nextPendingNo ?? _nextPendingNo,
  nextStkTakeAdjNo: nextStkTakeAdjNo ?? _nextStkTakeAdjNo,
  version: version ?? _version,
  nextStkAdjNo: nextStkAdjNo ?? _nextStkAdjNo,
  nextCustSONo: nextCustSONo ?? _nextCustSONo,
  distributionNo: distributionNo ?? _distributionNo,
  pRReqNo: pRReqNo ?? _pRReqNo,
  nextDmgStkTakeAdjNo: nextDmgStkTakeAdjNo ?? _nextDmgStkTakeAdjNo,
  faxServer: faxServer ?? _faxServer,
  stockClosingDt: stockClosingDt ?? _stockClosingDt,
  nextSONo: nextSONo ?? _nextSONo,
  nextDONo: nextDONo ?? _nextDONo,
  createUser: createUser ?? _createUser,
  createDate: createDate ?? _createDate,
  modifyUser: modifyUser ?? _modifyUser,
  modifyDate: modifyDate ?? _modifyDate,
  nextPCNo: nextPCNo ?? _nextPCNo,
  lastLogStkTakeDate: lastLogStkTakeDate ?? _lastLogStkTakeDate,
  nextMemPointAdjNo: nextMemPointAdjNo ?? _nextMemPointAdjNo,
  grossProfit: grossProfit ?? _grossProfit,
  pCReqNo: pCReqNo ?? _pCReqNo,
  nextDGIDNo: nextDGIDNo ?? _nextDGIDNo,
  nextConsNo: nextConsNo ?? _nextConsNo,
  nextConsRetnNo: nextConsRetnNo ?? _nextConsRetnNo,
  nextGSTRefundNo: nextGSTRefundNo ?? _nextGSTRefundNo,
  nextPOSSettleNo: nextPOSSettleNo ?? _nextPOSSettleNo,
  pOSVersion: pOSVersion ?? _pOSVersion,
  exPensesNo: exPensesNo ?? _exPensesNo,
  nextECRNo: nextECRNo ?? _nextECRNo,
  nextMarginAnalysedNo: nextMarginAnalysedNo ?? _nextMarginAnalysedNo,
  sRReqNo: sRReqNo ?? _sRReqNo,
  nextConReqNo: nextConReqNo ?? _nextConReqNo,
  nextTranHoldNo: nextTranHoldNo ?? _nextTranHoldNo,
  nextMemberNo: nextMemberNo ?? _nextMemberNo,
  nextPkgSalesNo: nextPkgSalesNo ?? _nextPkgSalesNo,
  nextDepositNo: nextDepositNo ?? _nextDepositNo,
  nextGIDHoldNo: nextGIDHoldNo ?? _nextGIDHoldNo,
  purchaseGstType: purchaseGstType ?? _purchaseGstType,
  creditSalesGstType: creditSalesGstType ?? _creditSalesGstType,
  nextPaymentNo: nextPaymentNo ?? _nextPaymentNo,
  nextCreditNoteNo: nextCreditNoteNo ?? _nextCreditNoteNo,
  nextDebitNoteNo: nextDebitNoteNo ?? _nextDebitNoteNo,
  nextReceiptNo: nextReceiptNo ?? _nextReceiptNo,
  nextPurInvoiceNo: nextPurInvoiceNo ?? _nextPurInvoiceNo,
  nextAppointmentNo: nextAppointmentNo ?? _nextAppointmentNo,
  nextToCreateNo: nextToCreateNo ?? _nextToCreateNo,
  nextTIAcceptNo: nextTIAcceptNo ?? _nextTIAcceptNo,
  uASACVersion: uASACVersion ?? _uASACVersion,
  eODDate: eODDate ?? _eODDate,
  nextMMRunningNo: nextMMRunningNo ?? _nextMMRunningNo,
  printPRMInReceipt: printPRMInReceipt ?? _printPRMInReceipt,
  versionType: versionType ?? _versionType,
  mainLocationVersionType: mainLocationVersionType ?? _mainLocationVersionType,
  nextSupplierInvoiceNo: nextSupplierInvoiceNo ?? _nextSupplierInvoiceNo,
  nextCustomerCreditNoteNo: nextCustomerCreditNoteNo ?? _nextCustomerCreditNoteNo,
  chatMessageNo: chatMessageNo ?? _chatMessageNo,
  binTransferNO: binTransferNO ?? _binTransferNO,
  nextAmkHubMgtNo: nextAmkHubMgtNo ?? _nextAmkHubMgtNo,
  server: server ?? _server,
  displayName: displayName ?? _displayName,
  fromEmailId: fromEmailId ?? _fromEmailId,
  password: password ?? _password,
  minBillvalue: minBillvalue ?? _minBillvalue,
  managementCode: managementCode ?? _managementCode,
  nextSerialTranNo: nextSerialTranNo ?? _nextSerialTranNo,
  nextTransferHoldNo: nextTransferHoldNo ?? _nextTransferHoldNo,
  nextMemberChildNo: nextMemberChildNo ?? _nextMemberChildNo,
  portNo: portNo ?? _portNo,
  isSSLRequired: isSSLRequired ?? _isSSLRequired,
  validateDate: validateDate ?? _validateDate,
  encryptKey: encryptKey ?? _encryptKey,
  licIntegration: licIntegration ?? _licIntegration,
);
  String? get companyID => _companyID;
  String? get name => _name;
  String? get address1 => _address1;
  String? get address2 => _address2;
  String? get city => _city;
  String? get state => _state;
  String? get country => _country;
  String? get postalCode => _postalCode;
  String? get phone => _phone;
  String? get fax => _fax;
  String? get email => _email;
  String? get url => _url;
  String? get locationCode => _locationCode;
  String? get mainLocationCode => _mainLocationCode;
  String? get bRNNo => _bRNNo;
  String? get gSTRegNo => _gSTRegNo;
  dynamic get nextMailID => _nextMailID;
  dynamic get nextPosNo => _nextPosNo;
  dynamic get nextInvoice => _nextInvoice;
  num? get gstPerc => _gstPerc;
  String? get gstType => _gstType;
  dynamic get displayMessage1 => _displayMessage1;
  dynamic get displayMessage2 => _displayMessage2;
  dynamic get displayComport => _displayComport;
  dynamic get nextPaymentVoucherNo => _nextPaymentVoucherNo;
  dynamic get nextPosCreditNo => _nextPosCreditNo;
  dynamic get nextReciptNo => _nextReciptNo;
  dynamic get nextAvilableRange => _nextAvilableRange;
  dynamic get nextTransNo => _nextTransNo;
  dynamic get maxDiscountAllowed => _maxDiscountAllowed;
  dynamic get maxPriceChangeAllowed => _maxPriceChangeAllowed;
  dynamic get barCodeCOMPort => _barCodeCOMPort;
  dynamic get expiredTime => _expiredTime;
  dynamic get nextPONo => _nextPONo;
  dynamic get nextGIDNo => _nextGIDNo;
  dynamic get nextAverageCostPercentage => _nextAverageCostPercentage;
  dynamic get taxIN => _taxIN;
  dynamic get nextTransferNo => _nextTransferNo;
  dynamic get nextEODDate => _nextEODDate;
  dynamic get nextPurchaseno => _nextPurchaseno;
  dynamic get nextPurReNo => _nextPurReNo;
  dynamic get nextDmgReNo => _nextDmgReNo;
  dynamic get salesReturnRefNo => _salesReturnRefNo;
  dynamic get taxTaken => _taxTaken;
  dynamic get hQTransNo => _hQTransNo;
  dynamic get billPrint => _billPrint;
  dynamic get useSalesQty => _useSalesQty;
  dynamic get remarks => _remarks;
  dynamic get companyShortCode => _companyShortCode;
  dynamic get pOOffReqNo => _pOOffReqNo;
  dynamic get salesReturnReqNo => _salesReturnReqNo;
  dynamic get nextPendingNo => _nextPendingNo;
  dynamic get nextStkTakeAdjNo => _nextStkTakeAdjNo;
  dynamic get version => _version;
  dynamic get nextStkAdjNo => _nextStkAdjNo;
  dynamic get nextCustSONo => _nextCustSONo;
  dynamic get distributionNo => _distributionNo;
  dynamic get pRReqNo => _pRReqNo;
  dynamic get nextDmgStkTakeAdjNo => _nextDmgStkTakeAdjNo;
  dynamic get faxServer => _faxServer;
  dynamic get stockClosingDt => _stockClosingDt;
  dynamic get nextSONo => _nextSONo;
  dynamic get nextDONo => _nextDONo;
  dynamic get createUser => _createUser;
  dynamic get createDate => _createDate;
  dynamic get modifyUser => _modifyUser;
  dynamic get modifyDate => _modifyDate;
  dynamic get nextPCNo => _nextPCNo;
  dynamic get lastLogStkTakeDate => _lastLogStkTakeDate;
  dynamic get nextMemPointAdjNo => _nextMemPointAdjNo;
  dynamic get grossProfit => _grossProfit;
  dynamic get pCReqNo => _pCReqNo;
  dynamic get nextDGIDNo => _nextDGIDNo;
  dynamic get nextConsNo => _nextConsNo;
  dynamic get nextConsRetnNo => _nextConsRetnNo;
  dynamic get nextGSTRefundNo => _nextGSTRefundNo;
  dynamic get nextPOSSettleNo => _nextPOSSettleNo;
  dynamic get pOSVersion => _pOSVersion;
  dynamic get exPensesNo => _exPensesNo;
  dynamic get nextECRNo => _nextECRNo;
  dynamic get nextMarginAnalysedNo => _nextMarginAnalysedNo;
  dynamic get sRReqNo => _sRReqNo;
  dynamic get nextConReqNo => _nextConReqNo;
  dynamic get nextTranHoldNo => _nextTranHoldNo;
  dynamic get nextMemberNo => _nextMemberNo;
  dynamic get nextPkgSalesNo => _nextPkgSalesNo;
  dynamic get nextDepositNo => _nextDepositNo;
  dynamic get nextGIDHoldNo => _nextGIDHoldNo;
  dynamic get purchaseGstType => _purchaseGstType;
  dynamic get creditSalesGstType => _creditSalesGstType;
  dynamic get nextPaymentNo => _nextPaymentNo;
  dynamic get nextCreditNoteNo => _nextCreditNoteNo;
  dynamic get nextDebitNoteNo => _nextDebitNoteNo;
  dynamic get nextReceiptNo => _nextReceiptNo;
  dynamic get nextPurInvoiceNo => _nextPurInvoiceNo;
  dynamic get nextAppointmentNo => _nextAppointmentNo;
  dynamic get nextToCreateNo => _nextToCreateNo;
  dynamic get nextTIAcceptNo => _nextTIAcceptNo;
  dynamic get uASACVersion => _uASACVersion;
  dynamic get eODDate => _eODDate;
  dynamic get nextMMRunningNo => _nextMMRunningNo;
  dynamic get printPRMInReceipt => _printPRMInReceipt;
  dynamic get versionType => _versionType;
  dynamic get mainLocationVersionType => _mainLocationVersionType;
  dynamic get nextSupplierInvoiceNo => _nextSupplierInvoiceNo;
  dynamic get nextCustomerCreditNoteNo => _nextCustomerCreditNoteNo;
  dynamic get chatMessageNo => _chatMessageNo;
  dynamic get binTransferNO => _binTransferNO;
  dynamic get nextAmkHubMgtNo => _nextAmkHubMgtNo;
  dynamic get server => _server;
  dynamic get displayName => _displayName;
  dynamic get fromEmailId => _fromEmailId;
  dynamic get password => _password;
  dynamic get minBillvalue => _minBillvalue;
  dynamic get managementCode => _managementCode;
  dynamic get nextSerialTranNo => _nextSerialTranNo;
  dynamic get nextTransferHoldNo => _nextTransferHoldNo;
  dynamic get nextMemberChildNo => _nextMemberChildNo;
  dynamic get portNo => _portNo;
  dynamic get isSSLRequired => _isSSLRequired;
  dynamic get validateDate => _validateDate;
  dynamic get encryptKey => _encryptKey;
  dynamic get licIntegration => _licIntegration;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['CompanyID'] = _companyID;
    map['Name'] = _name;
    map['Address1'] = _address1;
    map['Address2'] = _address2;
    map['City'] = _city;
    map['State'] = _state;
    map['Country'] = _country;
    map['PostalCode'] = _postalCode;
    map['Phone'] = _phone;
    map['Fax'] = _fax;
    map['Email'] = _email;
    map['Url'] = _url;
    map['LocationCode'] = _locationCode;
    map['MainLocationCode'] = _mainLocationCode;
    map['BRNNo'] = _bRNNo;
    map['GSTRegNo'] = _gSTRegNo;
    map['NextMailID'] = _nextMailID;
    map['NextPosNo'] = _nextPosNo;
    map['NextInvoice'] = _nextInvoice;
    map['GstPerc'] = _gstPerc;
    map['GstType'] = _gstType;
    map['DisplayMessage1'] = _displayMessage1;
    map['DisplayMessage2'] = _displayMessage2;
    map['DisplayComport'] = _displayComport;
    map['NextPaymentVoucherNo'] = _nextPaymentVoucherNo;
    map['NextPosCreditNo'] = _nextPosCreditNo;
    map['NextReciptNo'] = _nextReciptNo;
    map['NextAvilableRange'] = _nextAvilableRange;
    map['NextTransNo'] = _nextTransNo;
    map['MaxDiscountAllowed'] = _maxDiscountAllowed;
    map['MaxPriceChangeAllowed'] = _maxPriceChangeAllowed;
    map['BarCodeCOMPort'] = _barCodeCOMPort;
    map['ExpiredTime'] = _expiredTime;
    map['NextPONo'] = _nextPONo;
    map['NextGIDNo'] = _nextGIDNo;
    map['NextAverageCostPercentage'] = _nextAverageCostPercentage;
    map['TaxIN'] = _taxIN;
    map['NextTransferNo'] = _nextTransferNo;
    map['NextEODDate'] = _nextEODDate;
    map['NextPurchaseno'] = _nextPurchaseno;
    map['NextPurReNo'] = _nextPurReNo;
    map['NextDmgReNo'] = _nextDmgReNo;
    map['SalesReturnRefNo'] = _salesReturnRefNo;
    map['TaxTaken'] = _taxTaken;
    map['HQTransNo'] = _hQTransNo;
    map['BillPrint'] = _billPrint;
    map['UseSalesQty'] = _useSalesQty;
    map['Remarks'] = _remarks;
    map['CompanyShortCode'] = _companyShortCode;
    map['POOffReqNo'] = _pOOffReqNo;
    map['SalesReturnReqNo'] = _salesReturnReqNo;
    map['NextPendingNo'] = _nextPendingNo;
    map['NextStkTakeAdjNo'] = _nextStkTakeAdjNo;
    map['Version'] = _version;
    map['NextStkAdjNo'] = _nextStkAdjNo;
    map['NextCustSONo'] = _nextCustSONo;
    map['DistributionNo'] = _distributionNo;
    map['PRReqNo'] = _pRReqNo;
    map['NextDmgStkTakeAdjNo'] = _nextDmgStkTakeAdjNo;
    map['FaxServer'] = _faxServer;
    map['StockClosingDt'] = _stockClosingDt;
    map['NextSONo'] = _nextSONo;
    map['NextDONo'] = _nextDONo;
    map['CreateUser'] = _createUser;
    map['CreateDate'] = _createDate;
    map['ModifyUser'] = _modifyUser;
    map['ModifyDate'] = _modifyDate;
    map['NextPCNo'] = _nextPCNo;
    map['LastLogStkTakeDate'] = _lastLogStkTakeDate;
    map['NextMemPointAdjNo'] = _nextMemPointAdjNo;
    map['GrossProfit'] = _grossProfit;
    map['PCReqNo'] = _pCReqNo;
    map['NextDGIDNo'] = _nextDGIDNo;
    map['NextConsNo'] = _nextConsNo;
    map['NextConsRetnNo'] = _nextConsRetnNo;
    map['NextGSTRefundNo'] = _nextGSTRefundNo;
    map['NextPOSSettleNo'] = _nextPOSSettleNo;
    map['POSVersion'] = _pOSVersion;
    map['ExPensesNo'] = _exPensesNo;
    map['NextECRNo'] = _nextECRNo;
    map['NextMarginAnalysedNo'] = _nextMarginAnalysedNo;
    map['SRReqNo'] = _sRReqNo;
    map['NextConReqNo'] = _nextConReqNo;
    map['NextTranHoldNo'] = _nextTranHoldNo;
    map['NextMemberNo'] = _nextMemberNo;
    map['NextPkgSalesNo'] = _nextPkgSalesNo;
    map['NextDepositNo'] = _nextDepositNo;
    map['NextGIDHoldNo'] = _nextGIDHoldNo;
    map['PurchaseGstType'] = _purchaseGstType;
    map['CreditSalesGstType'] = _creditSalesGstType;
    map['NextPaymentNo'] = _nextPaymentNo;
    map['NextCreditNoteNo'] = _nextCreditNoteNo;
    map['NextDebitNoteNo'] = _nextDebitNoteNo;
    map['NextReceiptNo'] = _nextReceiptNo;
    map['NextPurInvoiceNo'] = _nextPurInvoiceNo;
    map['NextAppointmentNo'] = _nextAppointmentNo;
    map['NextToCreateNo'] = _nextToCreateNo;
    map['NextTIAcceptNo'] = _nextTIAcceptNo;
    map['UASACVersion'] = _uASACVersion;
    map['EODDate'] = _eODDate;
    map['NextMMRunningNo'] = _nextMMRunningNo;
    map['PrintPRMInReceipt'] = _printPRMInReceipt;
    map['VersionType'] = _versionType;
    map['MainLocationVersionType'] = _mainLocationVersionType;
    map['NextSupplierInvoiceNo'] = _nextSupplierInvoiceNo;
    map['NextCustomerCreditNoteNo'] = _nextCustomerCreditNoteNo;
    map['ChatMessageNo'] = _chatMessageNo;
    map['BinTransferNO'] = _binTransferNO;
    map['NextAmkHubMgtNo'] = _nextAmkHubMgtNo;
    map['Server'] = _server;
    map['DisplayName'] = _displayName;
    map['FromEmailId'] = _fromEmailId;
    map['Password'] = _password;
    map['MinBillvalue'] = _minBillvalue;
    map['ManagementCode'] = _managementCode;
    map['NextSerialTranNo'] = _nextSerialTranNo;
    map['NextTransferHoldNo'] = _nextTransferHoldNo;
    map['NextMemberChildNo'] = _nextMemberChildNo;
    map['PortNo'] = _portNo;
    map['IsSSLRequired'] = _isSSLRequired;
    map['ValidateDate'] = _validateDate;
    map['EncryptKey'] = _encryptKey;
    map['LicIntegration'] = _licIntegration;
    return map;
  }

}