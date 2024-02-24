class Bank {
  int? status;
  String? message;
  List<BankParams>? params;

  Bank({this.status, this.message, this.params});

  Bank.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['params'] != null) {
      params = <BankParams>[];
      json['params'].forEach((v) {
        params!.add(new BankParams.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.params != null) {
      data['params'] = this.params!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BankParams {
  String? bankName;
  String? bankAccount;

  BankParams({this.bankName, this.bankAccount});

  BankParams.fromJson(Map<String, dynamic> json) {
    bankName = json['bank_name'];
    bankAccount = json['bank_account'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bank_name'] = this.bankName;
    data['bank_account'] = this.bankAccount;
    return data;
  }
}