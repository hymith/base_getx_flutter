class ResponseModel{
  bool _isSuccess;
  String _messsage;
  ResponseModel( this._isSuccess,  this._messsage);
  bool get isSuccess => _isSuccess;
  String get message => _messsage;

}