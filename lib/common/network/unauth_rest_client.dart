import 'package:surapp_flutter/common/network/network_error_handler.dart';
import 'package:surapp_flutter/common/network/rest_client.dart';

class UnAuthRestClient extends RestClient {
  UnAuthRestClient(
    super.client,
  ) : super(errorHandler: NetworkErrorHandlerImpl());
}
