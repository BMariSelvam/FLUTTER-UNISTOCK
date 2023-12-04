class StockDetails {
    StockDetails({
        required this.inventoryCode,
        required this.description,
        required this.model,
        required this.barcode,
        required this.inventoryType,
        required this.uom,
        required this.departmentCode,
        required this.brandCode,
        required this.categoryCode,
        required this.origin,
        required this.compatible,
        required this.remarks,
        required this.vendorCode,
        required this.allowExpireDate,
        required this.packageItem,
        required this.merchandiseCode,
        required this.binNo,
        required this.releaseDate,
        required this.customerRequired,
        required this.imei,
        required this.mobile,
        required this.imsi,
        required this.sellingPrice,
        required this.averageCost,
        required this.firstInQty,
        required this.midInQty,
        required this.lastInQty,
        required this.firstInCost,
        required this.midInCost,
        required this.lastInCost,
        required this.minProfitPercent,
        required this.minProfitAmount,
        required this.promotionPrice,
        required this.promotionFromDate,
        required this.promotionToDate,
        required this.lastSalesDate,
        required this.lastPurchaseDate,
        required this.lastCashBillNo,
        required this.lastPurchaseInvoiceNo,
        required this.minimumQtyLevel,
        required this.maximumQtyLevel,
        required this.reOrderLevel,
        required this.serialNoRequired,
        required this.distributionPrice,
        required this.chilled,
        required this.chilledPrice,
        required this.discountPriceCode,
        required this.allowMemberDiscount,
        required this.allowReward,
        required this.catalogueNo,
        required this.unitCost,
        required this.gtinCode,
        required this.wareHouse,
        required this.changeDescription,
        required this.weight,
        required this.lstStkTakQty,
        required this.lstStkTakDate,
        required this.inActive,
        required this.inActiveDate,
        required this.lstDmgStkTakQty,
        required this.lstDmgStkTakDate,
        required this.retailPrice,
        required this.createUser,
        required this.createDate,
        required this.modifyUser,
        required this.modifyDate,
        required this.shortDescription,
        required this.freeItemStatus,
        required this.slPromotionStatus,
        required this.packingCost,
        required this.lastLogStkTakeQty,
        required this.inventoryGroup,
        required this.allowMrp,
        required this.mrp,
        required this.allowNegativeStock,
        required this.allowMultipleBin,
        required this.inputTax,
        required this.outputTax,
        required this.allowPaymodeCommision,
        required this.allowZeroPrice,
        required this.nonTaxItem,
        required this.allowBatchStock,
        required this.onlineSales,
        required this.isFixedPrice,
        required this.allowMemberPrice,
        required this.freightCost,
        required this.discontinued,
        required this.discontinuedDate,
        required this.printPosRemarks,
        required this.userDefined1,
        required this.userDefined2,
        required this.userDefined3,
        required this.purchaseableLocations,
        required this.openItem,
        required this.salesmanRequired,
        required this.isVoucherItem,
        required this.webinfo,
        required this.isAsset,
        required this.colorCode,
        required this.sizeCode,
        required this.cafe,
        required this.qtyInHand
    });

    final String? inventoryCode;
    final String? description;
    final String? model;
    final String? barcode;
    final bool? inventoryType;
    final String? uom;
    final String? departmentCode;
    final String? brandCode;
    final String? categoryCode;
    final String? origin;
    final String? compatible;
    final String? remarks;
    final String? vendorCode;
    final bool? allowExpireDate;
    final bool? packageItem;
    final String? merchandiseCode;
    final String? binNo;
    final dynamic releaseDate;
    final dynamic customerRequired;
    final dynamic imei;
    final dynamic mobile;
    final dynamic imsi;
    final String? sellingPrice;
    final dynamic averageCost;
    final dynamic firstInQty;
    final dynamic midInQty;
    final dynamic lastInQty;
    final dynamic firstInCost;
    final dynamic midInCost;
    final dynamic lastInCost;
    final dynamic minProfitPercent;
    final dynamic minProfitAmount;
    final dynamic promotionPrice;
    final dynamic promotionFromDate;
    final dynamic promotionToDate;
    final dynamic lastSalesDate;
    final dynamic lastPurchaseDate;
    final dynamic lastCashBillNo;
    final dynamic lastPurchaseInvoiceNo;
    final dynamic minimumQtyLevel;
    final dynamic maximumQtyLevel;
    final dynamic reOrderLevel;
    final dynamic serialNoRequired;
    final dynamic distributionPrice;
    final dynamic chilled;
    final dynamic chilledPrice;
    final dynamic discountPriceCode;
    final dynamic allowMemberDiscount;
    final dynamic allowReward;
    final dynamic catalogueNo;
    final dynamic unitCost;
    final dynamic gtinCode;
    final dynamic wareHouse;
    final dynamic changeDescription;
    final dynamic weight;
    final dynamic lstStkTakQty;
    final dynamic lstStkTakDate;
    final dynamic inActive;
    final dynamic inActiveDate;
    final dynamic lstDmgStkTakQty;
    final dynamic lstDmgStkTakDate;
    final dynamic retailPrice;
    final dynamic createUser;
    final DateTime? createDate;
    final dynamic modifyUser;
    final DateTime? modifyDate;
    final dynamic shortDescription;
    final dynamic freeItemStatus;
    final dynamic slPromotionStatus;
    final dynamic packingCost;
    final dynamic lastLogStkTakeQty;
    final dynamic inventoryGroup;
    final dynamic allowMrp;
    final dynamic mrp;
    final dynamic allowNegativeStock;
    final dynamic allowMultipleBin;
    final dynamic inputTax;
    final dynamic outputTax;
    final dynamic allowPaymodeCommision;
    final dynamic allowZeroPrice;
    final dynamic nonTaxItem;
    final dynamic allowBatchStock;
    final dynamic onlineSales;
    final dynamic isFixedPrice;
    final dynamic allowMemberPrice;
    final dynamic freightCost;
    final dynamic discontinued;
    final dynamic discontinuedDate;
    final dynamic printPosRemarks;
    final dynamic userDefined1;
    final dynamic userDefined2;
    final dynamic userDefined3;
    final dynamic purchaseableLocations;
    final dynamic openItem;
    final dynamic salesmanRequired;
    final dynamic isVoucherItem;
    final dynamic webinfo;
    final dynamic isAsset;
    final dynamic colorCode;
    final dynamic sizeCode;
    final dynamic cafe;
    final dynamic qtyInHand;

    factory StockDetails.fromJson(Map<String, dynamic> json){ 
        return StockDetails(
            inventoryCode: json["InventoryCode"],
            description: json["Description"],
            model: json["Model"],
            barcode: json["Barcode"],
            inventoryType: json["InventoryType"],
            uom: json["UOM"],
            departmentCode: json["DepartmentCode"],
            brandCode: json["BrandCode"],
            categoryCode: json["CategoryCode"],
            origin: json["Origin"],
            compatible: json["Compatible"],
            remarks: json["Remarks"],
            vendorCode: json["VendorCode"],
            allowExpireDate: json["AllowExpireDate"],
            packageItem: json["PackageItem"],
            merchandiseCode: json["MerchandiseCode"],
            binNo: json["BinNo"],
            releaseDate: json["ReleaseDate"],
            customerRequired: json["CustomerRequired"],
            imei: json["IMEI"],
            mobile: json["Mobile"],
            imsi: json["IMSI"],
            sellingPrice: json["SellingPrice"].toString(),
            averageCost: json["AverageCost"],
            firstInQty: json["FirstInQty"],
            midInQty: json["MidInQty"],
            lastInQty: json["LastInQty"],
            firstInCost: json["FirstInCost"],
            midInCost: json["MidInCost"],
            lastInCost: json["LastInCost"],
            minProfitPercent: json["MinProfitPercent"],
            minProfitAmount: json["MinProfitAmount"],
            promotionPrice: json["PromotionPrice"],
            promotionFromDate: json["PromotionFromDate"],
            promotionToDate: json["PromotionToDate"],
            lastSalesDate: json["LastSalesDate"],
            lastPurchaseDate: json["LastPurchaseDate"],
            lastCashBillNo: json["LastCashBillNo"],
            lastPurchaseInvoiceNo: json["LastPurchaseInvoiceNo"],
            minimumQtyLevel: json["MinimumQtyLevel"],
            maximumQtyLevel: json["MaximumQtyLevel"],
            reOrderLevel: json["ReOrderLevel"],
            serialNoRequired: json["SerialNoRequired"],
            distributionPrice: json["DistributionPrice"],
            chilled: json["Chilled"],
            chilledPrice: json["ChilledPrice"],
            discountPriceCode: json["DiscountPriceCode"],
            allowMemberDiscount: json["AllowMemberDiscount"],
            allowReward: json["AllowReward"],
            catalogueNo: json["CatalogueNo"],
            unitCost: json["UnitCost"],
            gtinCode: json["GTINCode"],
            wareHouse: json["WareHouse"],
            changeDescription: json["ChangeDescription"],
            weight: json["Weight"],
            lstStkTakQty: json["LstStkTakQty"],
            lstStkTakDate: json["LstStkTakDate"],
            inActive: json["InActive"],
            inActiveDate: json["InActiveDate"],
            lstDmgStkTakQty: json["LstDmgStkTakQty"],
            lstDmgStkTakDate: json["LstDmgStkTakDate"],
            retailPrice: json["RetailPrice"],
            createUser: json["CreateUser"],
            createDate: DateTime.tryParse(json["CreateDate"] ?? ""),
            modifyUser: json["ModifyUser"],
            modifyDate: DateTime.tryParse(json["ModifyDate"] ?? ""),
            shortDescription: json["ShortDescription"],
            freeItemStatus: json["FreeItemStatus"],
            slPromotionStatus: json["SLPromotionStatus"],
            packingCost: json["PackingCost"],
            lastLogStkTakeQty: json["LastLogStkTakeQty"],
            inventoryGroup: json["InventoryGroup"],
            allowMrp: json["AllowMRP"],
            mrp: json["MRP"],
            allowNegativeStock: json["AllowNegativeStock"],
            allowMultipleBin: json["AllowMultipleBin"],
            inputTax: json["InputTax"],
            outputTax: json["OutputTax"],
            allowPaymodeCommision: json["AllowPaymodeCommision"],
            allowZeroPrice: json["AllowZeroPrice"],
            nonTaxItem: json["NonTaxItem"],
            allowBatchStock: json["AllowBatchStock"],
            onlineSales: json["OnlineSales"],
            isFixedPrice: json["IsFixedPrice"],
            allowMemberPrice: json["AllowMemberPrice"],
            freightCost: json["FreightCost"],
            discontinued: json["Discontinued"],
            discontinuedDate: json["DiscontinuedDate"],
            printPosRemarks: json["PrintPOSRemarks"],
            userDefined1: json["UserDefined1"],
            userDefined2: json["UserDefined2"],
            userDefined3: json["UserDefined3"],
            purchaseableLocations: json["PurchaseableLocations"],
            openItem: json["OpenItem"],
            salesmanRequired: json["SalesmanRequired"],
            isVoucherItem: json["IsVoucherItem"],
            webinfo: json["Webinfo"],
            isAsset: json["IsAsset"],
            colorCode: json["ColorCode"],
            sizeCode: json["SizeCode"],
            cafe: json["Cafe"],
             qtyInHand: json["QtyOnHand"],
        );
    }

    Map<String, dynamic> toJson() => {
        "InventoryCode": inventoryCode,
        "Description": description,
        "Model": model,
        "Barcode": barcode,
        "InventoryType": inventoryType,
        "UOM": uom,
        "DepartmentCode": departmentCode,
        "BrandCode": brandCode,
        "CategoryCode": categoryCode,
        "Origin": origin,
        "Compatible": compatible,
        "Remarks": remarks,
        "VendorCode": vendorCode,
        "AllowExpireDate": allowExpireDate,
        "PackageItem": packageItem,
        "MerchandiseCode": merchandiseCode,
        "BinNo": binNo,
        "ReleaseDate": releaseDate,
        "CustomerRequired": customerRequired,
        "IMEI": imei,
        "Mobile": mobile,
        "IMSI": imsi,
        "SellingPrice": sellingPrice,
        "AverageCost": averageCost,
        "FirstInQty": firstInQty,
        "MidInQty": midInQty,
        "LastInQty": lastInQty,
        "FirstInCost": firstInCost,
        "MidInCost": midInCost,
        "LastInCost": lastInCost,
        "MinProfitPercent": minProfitPercent,
        "MinProfitAmount": minProfitAmount,
        "PromotionPrice": promotionPrice,
        "PromotionFromDate": promotionFromDate,
        "PromotionToDate": promotionToDate,
        "LastSalesDate": lastSalesDate,
        "LastPurchaseDate": lastPurchaseDate,
        "LastCashBillNo": lastCashBillNo,
        "LastPurchaseInvoiceNo": lastPurchaseInvoiceNo,
        "MinimumQtyLevel": minimumQtyLevel,
        "MaximumQtyLevel": maximumQtyLevel,
        "ReOrderLevel": reOrderLevel,
        "SerialNoRequired": serialNoRequired,
        "DistributionPrice": distributionPrice,
        "Chilled": chilled,
        "ChilledPrice": chilledPrice,
        "DiscountPriceCode": discountPriceCode,
        "AllowMemberDiscount": allowMemberDiscount,
        "AllowReward": allowReward,
        "CatalogueNo": catalogueNo,
        "UnitCost": unitCost,
        "GTINCode": gtinCode,
        "WareHouse": wareHouse,
        "ChangeDescription": changeDescription,
        "Weight": weight,
        "LstStkTakQty": lstStkTakQty,
        "LstStkTakDate": lstStkTakDate,
        "InActive": inActive,
        "InActiveDate": inActiveDate,
        "LstDmgStkTakQty": lstDmgStkTakQty,
        "LstDmgStkTakDate": lstDmgStkTakDate,
        "RetailPrice": retailPrice,
        "CreateUser": createUser,
        "CreateDate": createDate?.toIso8601String(),
        "ModifyUser": modifyUser,
        "ModifyDate": modifyDate?.toIso8601String(),
        "ShortDescription": shortDescription,
        "FreeItemStatus": freeItemStatus,
        "SLPromotionStatus": slPromotionStatus,
        "PackingCost": packingCost,
        "LastLogStkTakeQty": lastLogStkTakeQty,
        "InventoryGroup": inventoryGroup,
        "AllowMRP": allowMrp,
        "MRP": mrp,
        "AllowNegativeStock": allowNegativeStock,
        "AllowMultipleBin": allowMultipleBin,
        "InputTax": inputTax,
        "OutputTax": outputTax,
        "AllowPaymodeCommision": allowPaymodeCommision,
        "AllowZeroPrice": allowZeroPrice,
        "NonTaxItem": nonTaxItem,
        "AllowBatchStock": allowBatchStock,
        "OnlineSales": onlineSales,
        "IsFixedPrice": isFixedPrice,
        "AllowMemberPrice": allowMemberPrice,
        "FreightCost": freightCost,
        "Discontinued": discontinued,
        "DiscontinuedDate": discontinuedDate,
        "PrintPOSRemarks": printPosRemarks,
        "UserDefined1": userDefined1,
        "UserDefined2": userDefined2,
        "UserDefined3": userDefined3,
        "PurchaseableLocations": purchaseableLocations,
        "OpenItem": openItem,
        "SalesmanRequired": salesmanRequired,
        "IsVoucherItem": isVoucherItem,
        "Webinfo": webinfo,
        "IsAsset": isAsset,
        "ColorCode": colorCode,
        "SizeCode": sizeCode,
        "Cafe": cafe,
    };

}
