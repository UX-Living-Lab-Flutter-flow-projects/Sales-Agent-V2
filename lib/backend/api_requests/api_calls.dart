import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start clients Group Code

class ClientsGroup {
  static String baseUrl = 'https://100096.pythonanywhere.com/api/v2/';
  static Map<String, String> headers = {};
  static GetCall getCall = GetCall();
  static AddCall addCall = AddCall();
}

class GetCall {
  Future<ApiCallResponse> call({
    String? userId = 'test123',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get',
      apiUrl: '${ClientsGroup.baseUrl}/create-enquiry?user_id=${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AddCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? contactType = '',
    int? rating,
    String? userId = '',
    String? enquiryDetails = '',
    String? contactName = '',
    String? contactEmail = '',
    String? image = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "contact_name": "${contactName}",
  "contact_type": "${contactType}",
  "contact_email": "${contactEmail}",
  "rating": ${rating},
  "photo": "${image}",
  "enquiry_details": "${enquiryDetails}",
  "user_id": "${userId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'add',
      apiUrl: '${ClientsGroup.baseUrl}/create-enquiry',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End clients Group Code

/// Start refereals Group Code

class ReferealsGroup {
  static String baseUrl = 'https://100096.pythonanywhere.com/api/v2/';
  static Map<String, String> headers = {};
  static AddReferalCall addReferalCall = AddReferalCall();
  static GetReferalCall getReferalCall = GetReferalCall();
}

class AddReferalCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? contactName = '',
    String? contactAddress = '',
    String? country = '',
    String? location = '',
    String? currency = '',
    String? paymentReference = '',
    String? sourceInfor = '',
    String? prospectiveClientName = '',
    String? brandProspectiveClient = '',
    String? nameCharge = '',
    String? designationProspectiveClient = '',
    String? websiteProspectiveClient = '',
    String? emailProspectiveClient = '',
    String? relationshipProspectiveClient = '',
    String? locationProspectiveClient = '',
    String? countryProspectiveClient = '',
    String? addressProspectiveClient = '',
    String? phoneProspectiveClient = '',
    String? productsProspectiveClient = '',
    String? linkedinProspectiveClient = '',
    String? twitterProspectiveClient = '',
    String? facebookProspectiveClient = '',
    String? instagramProspectiveClient = '',
    String? tiktokProspectiveClient = '',
    String? youtubeProspectiveClient = '',
    String? descriptionProspectiveClient = '',
    String? logoProspectiveClient = '',
    String? suggestionsProspectiveClient = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "contact_name": "${contactName}",
  "contact_Address": "${contactAddress}",
  "country": "${country}",
  "location": "${location}",
  "currency": "${currency}",
  "payment_reference": "${paymentReference}",
  "source_infor": "${sourceInfor}",
  "Prospective_client_name":"${prospectiveClientName}",
  "Brand_Prospective_client":"${brandProspectiveClient}",
  "name_charge": "${nameCharge}",
  "Designation_Prospective_client": "${designationProspectiveClient}",
  "Website_Prospective_client":"${websiteProspectiveClient}",
  "Email_Prospective_client": "${emailProspectiveClient}",
  "relationship_Prospective_client": "${relationshipProspectiveClient}",
  "Location_Prospective_client": "${locationProspectiveClient}",
  "Country_Prospective_client": "${countryProspectiveClient}",
  "Address_Prospective_client": "${addressProspectiveClient}",
  "Phone_Prospective_client": "${phoneProspectiveClient}",
  "Products_Prospective_client": "${productsProspectiveClient}",
  "Linkedin_Prospective_client":"${linkedinProspectiveClient}",
  "Twitter_Prospective_client":"${twitterProspectiveClient}",
  "Facebook_Prospective_client":"${facebookProspectiveClient}",
  "Instagram_Prospective_client":"${instagramProspectiveClient}",
  "Youtube_Prospective_client":"${youtubeProspectiveClient}",
  "Tiktok_Prospective_client":"${tiktokProspectiveClient}",
  "Description_Prospective_client":"${descriptionProspectiveClient}",
  "Logo_Prospective_client":"${logoProspectiveClient}",
  "suggestions_Prospective_client": "${suggestionsProspectiveClient}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addReferal',
      apiUrl: '${ReferealsGroup.baseUrl}/referal',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetReferalCall {
  Future<ApiCallResponse> call({
    String? email = 'umarbaloch262@gmail.com',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getReferal',
      apiUrl: '${ReferealsGroup.baseUrl}referal?email=${email}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic success(dynamic response) => getJsonField(
        response,
        r'''$.success''',
      );
  dynamic msg(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

/// End refereals Group Code

/// Start AdminPanel Group Code

class AdminPanelGroup {
  static String baseUrl = 'https://100096.pythonanywhere.com/api/v2/';
  static Map<String, String> headers = {};
  static AllReferalsCall allReferalsCall = AllReferalsCall();
  static AllClientsCall allClientsCall = AllClientsCall();
  static UpdateReferalCall updateReferalCall = UpdateReferalCall();
  static UpdateClienttCall updateClienttCall = UpdateClienttCall();
  static DeleteClientCall deleteClientCall = DeleteClientCall();
  static DeleteReferalCall deleteReferalCall = DeleteReferalCall();
}

class AllReferalsCall {
  Future<ApiCallResponse> call({
    String? adminId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'allReferals',
      apiUrl:
          '${AdminPanelGroup.baseUrl}admin-referral?client_admin_id=${adminId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AllClientsCall {
  Future<ApiCallResponse> call({
    String? adminId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'allClients',
      apiUrl:
          '${AdminPanelGroup.baseUrl}admin-enquiry?client_admin_id=${adminId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateReferalCall {
  Future<ApiCallResponse> call({
    String? clientId = '',
    String? referalId = '',
    String? contactName = '',
    String? contactAddress = '',
    String? country = '',
    String? phoneProspectiveClient = '',
    String? suggestionsProspectiveClient = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
"email":"${email}",
  "contact_name": "${contactName}",
  "contact_Address": "${contactAddress}",
  "country": "${country}",
  "phone_Prospective_client": "${phoneProspectiveClient}",
"suggesitions_Prospective_client":"${suggestionsProspectiveClient}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateReferal',
      apiUrl:
          '${AdminPanelGroup.baseUrl}admin-referral?client_admin_id=${clientId}&referal_id=${referalId}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateClienttCall {
  Future<ApiCallResponse> call({
    String? clientId = '',
    String? bookId = '',
    String? contactEmail = '',
    String? contactType = '',
    String? rating = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "contact_email": "${contactEmail}",
  "contact_type": "${contactType}",
  "rating": "${rating}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateClientt',
      apiUrl:
          '${AdminPanelGroup.baseUrl}admin-enquiry?client_admin_id=${clientId}&book_id=${bookId}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeleteClientCall {
  Future<ApiCallResponse> call({
    String? bookId = '',
    String? adminId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delete client',
      apiUrl:
          '${AdminPanelGroup.baseUrl}/admin-enquiry?book_id=${bookId}&client_admin_id=${adminId}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeleteReferalCall {
  Future<ApiCallResponse> call({
    String? adminId = '',
    String? referalId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delete referal',
      apiUrl:
          '${AdminPanelGroup.baseUrl}/admin-referral?referal_id=${referalId}&client_admin_id=${adminId}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End AdminPanel Group Code

class LinkBageLoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? os = '',
    String? device = '',
    String? browser = '',
    String? location = '',
    String? time = '',
    String? connection = '',
    String? ip = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Username": "${username}",
  "OS": "${os}",
  "Device": "${device}",
  "Browser": "${browser}",
  "Location": "${location}",
  "Time": "${time}",
  "Connection": "${connection}",
  "IP": "${ip}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'link bage login ',
      apiUrl: 'https://100014.pythonanywhere.com/api/linkbased/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LinkBageLoginCopyCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? os = '',
    String? device = '',
    String? browser = '',
    String? location = '',
    String? time = '',
    String? connection = '',
    String? ip = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Username": "${username}",
  "OS": "${os}",
  "Device": "${device}",
  "Browser": "${browser}",
  "Location": "${location}",
  "Time": "${time}",
  "Connection": "${connection}",
  "IP": "${ip}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'link bage login  Copy',
      apiUrl: 'https://100014.pythonanywhere.com/api/linkbased/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateRoomForDigitalQCall {
  static Future<ApiCallResponse> call({
    String? username = 'tune',
    String? qrid = '1',
    String? product = 'DigitalQ',
  }) async {
    final ffApiRequestBody = '''
{
  "user_name": "${username}",
  "qrid": "${qrid}",
  "product": "${product}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create room for digitalQ',
      apiUrl: 'http://100069.pythonanywhere.com/chat/create-room/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class NewCreateRoomApiCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? orgId = '',
    String? portfolioName = '',
    String? productName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'new create room Api ',
      apiUrl: 'https://100096.pythonanywhere.com/api/v2/room-control/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_id': userId,
        'org_id': orgId,
        'portfolio_name': portfolioName,
        'product_name': productName,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.success''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic roomid(dynamic response) => getJsonField(
        response,
        r'''$.inserted_id''',
      );
  static dynamic userid(dynamic response) => getJsonField(
        response,
        r'''$.response.user_id''',
      );
  static dynamic userorgid(dynamic response) => getJsonField(
        response,
        r'''$.response.org_id''',
      );
  static dynamic portfolioname(dynamic response) => getJsonField(
        response,
        r'''$.response.portfolio_name''',
      );
  static dynamic productname(dynamic response) => getJsonField(
        response,
        r'''$.response.product_name''',
      );
  static dynamic roomroomid(dynamic response) => getJsonField(
        response,
        r'''$.response.room_room_id''',
      );
  static dynamic inactive(dynamic response) => getJsonField(
        response,
        r'''$.response.is_active''',
      );
}

class NewCreateOpenRoomApiCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? productName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'new create open room Api',
      apiUrl: 'https://100096.pythonanywhere.com/api/v2/openChatRoom/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_id': userId,
        'product_name': productName,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.success''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic insertID(dynamic response) => getJsonField(
        response,
        r'''$.inserted_id''',
      );
  static dynamic userid(dynamic response) => getJsonField(
        response,
        r'''$.response.user_id''',
      );
  static dynamic userorgid(dynamic response) => getJsonField(
        response,
        r'''$.response.org_id''',
      );
  static dynamic portfolioname(dynamic response) => getJsonField(
        response,
        r'''$.response.portfolio_name''',
      );
  static dynamic productname(dynamic response) => getJsonField(
        response,
        r'''$.response.product_name''',
      );
  static dynamic roomroomid(dynamic response) => getJsonField(
        response,
        r'''$.response.room_room_id''',
      );
  static dynamic inactive(dynamic response) => getJsonField(
        response,
        r'''$.response.is_active''',
      );
}

class CheckHistoryCall {
  static Future<ApiCallResponse> call({
    String? sessionId = '',
    String? subProduct = '',
  }) async {
    final ffApiRequestBody = '''
{
  "session_id": "${sessionId}",
  "sub_product": "${subProduct}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckHistory',
      apiUrl:
          'https://100096.pythonanywhere.com/create_room_sales_agent/sales-agent/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic sessionid(dynamic response) => getJsonField(
        response,
        r'''$.session_id''',
      );
  static dynamic product(dynamic response) => getJsonField(
        response,
        r'''$.product''',
      );
  static dynamic portfolio(dynamic response) => getJsonField(
        response,
        r'''$.portfolio''',
      );
  static dynamic roompk(dynamic response) => getJsonField(
        response,
        r'''$.room_pk''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
        true,
      );
}

class GetOpenChatSessionCall {
  static Future<ApiCallResponse> call({
    String? sessionId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getOpenChatSession',
      apiUrl:
          'https://100096.pythonanywhere.com/dowell-api/create-room/Sales-Agent/?session_id=${sessionId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic sessionid(dynamic response) => getJsonField(
        response,
        r'''$.session_id''',
      );
  static dynamic product(dynamic response) => getJsonField(
        response,
        r'''$.product''',
      );
  static dynamic portfolio(dynamic response) => getJsonField(
        response,
        r'''$.portfolio''',
      );
  static dynamic roompk(dynamic response) => getJsonField(
        response,
        r'''$.room_pk''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
        true,
      );
}

class NewGetRoomByIdCall {
  static Future<ApiCallResponse> call({
    String? roomId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'new Get room by Id',
      apiUrl:
          'https://100096.pythonanywhere.com/api/v2/room-service/?type=get_room_by_id&room_id=${roomId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'type': "get_messages",
        'room_id ': roomId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic sessionid(dynamic response) => getJsonField(
        response,
        r'''$.session_id''',
      );
  static dynamic productold(dynamic response) => getJsonField(
        response,
        r'''$.product''',
      );
  static dynamic portfolioold(dynamic response) => getJsonField(
        response,
        r'''$.portfolio''',
      );
  static dynamic roompkold(dynamic response) => getJsonField(
        response,
        r'''$.room_pk''',
      );
  static dynamic messagesold(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
        true,
      );
  static dynamic messageIsRead(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].read''',
      );
  static dynamic messagetype(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].message_type''',
      );
  static dynamic messageSender(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].author''',
      );
  static dynamic messageSide(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].side''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].message_data''',
      );
  static dynamic roompk(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].room_id''',
      );
  static dynamic messageid(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:]._id''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.response.data''',
      );
  static dynamic issuccess(dynamic response) => getJsonField(
        response,
        r'''$.response.isSuccess''',
      );
  static dynamic success(dynamic response) => getJsonField(
        response,
        r'''$.success''',
      );
  static dynamic statusmessage(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class LogoutCall {
  static Future<ApiCallResponse> call({
    String? sessionId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "session_id": "${sessionId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: 'https://100014.pythonanywhere.com/api/mobilelogout/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class NewGetMessageByRoomIdCall {
  static Future<ApiCallResponse> call({
    String? roomId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'new  Get message by room Id',
      apiUrl: 'https://100096.pythonanywhere.com/api/v2/room-service/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'type': "get_messages",
        'room_id': roomId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic messageIsRead(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].read''',
        true,
      );
  static dynamic messagetype(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].message_type''',
        true,
      );
  static dynamic messageSender(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].author''',
        true,
      );
  static dynamic messageSide(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].side''',
        true,
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].message_data''',
        true,
      );
  static dynamic messageRoomId(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:].room_id''',
        true,
      );
  static dynamic messageid(dynamic response) => getJsonField(
        response,
        r'''$.response.data[:]._id''',
        true,
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.response.data''',
        true,
      );
}

class SendMessageCall {
  static Future<ApiCallResponse> call({
    String? sessionId = '',
    String? message = '',
    String? roomId = '',
    String? messageType = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'sendMessage',
      apiUrl: 'https://100096.pythonanywhere.com/send/${roomId}/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'session_id': sessionId,
        'message': message,
        'message_type': messageType,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class NewSendmessageToDatabaseCall {
  static Future<ApiCallResponse> call({
    String? messageType = '',
    String? author = '',
    String? side = '',
    String? messageData = '',
    String? roomId = '',
    String? type = 'create_message',
  }) async {
    final ffApiRequestBody = '''
{
  "type": "create_message",
  "room_id": "${roomId}",
  "message_data": "${messageData}",
  "side": "${side}",
  "author": "${author}",
  "message_type": "${messageType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'new sendmessage to database',
      apiUrl: 'https://100096.pythonanywhere.com/api/v2/room-service/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.success''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic insertedid(dynamic response) => getJsonField(
        response,
        r'''$.response.inserted_id''',
      );
  static dynamic issuccess(dynamic response) => getJsonField(
        response,
        r'''$.response.isSuccess''',
      );
}

class SendMessageLogedCall {
  static Future<ApiCallResponse> call({
    String? orgId = '',
    String? message = '',
    int? roomId,
    String? messageType = '',
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "message": "${message}",
  "message_type": "${messageType}",
  "user_id": "${userId}",
  "org_id": "${orgId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendMessageLoged',
      apiUrl: 'https://100096.pythonanywhere.com/send_message/${roomId}/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetMessageLogedCall {
  static Future<ApiCallResponse> call({
    int? roomId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getMessageLoged',
      apiUrl: 'https://100096.pythonanywhere.com/send_message/${roomId}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateProtfolioCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? sessionId = '',
    String? userId = '',
    String? orgId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Create Protfolio',
      apiUrl: 'https://100096.pythonanywhere.com/create-portfolio-mobile/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': sessionId,
        'session_id': sessionId,
        'user_id': userId,
        'org_id': orgId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic deletestatus(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  static dynamic portfolioname(dynamic response) => getJsonField(
        response,
        r'''$.portfolio.portfolio_name''',
      );
  static dynamic userid(dynamic response) => getJsonField(
        response,
        r'''$.portfolio.userID''',
      );
  static dynamic portfolioorganization(dynamic response) => getJsonField(
        response,
        r'''$.portfolio.organization''',
      );
}

class DeleteConversationRoomCall {
  static Future<ApiCallResponse> call({
    String? sessionId = '',
    String? roomId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteConversationRoom',
      apiUrl:
          'https://100096.pythonanywhere.com/delete-customer-support-mobile/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'session_id': sessionId,
        'room_id': roomId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic deletestatus(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class NewDeleteChatRoomToDatabasewCall {
  static Future<ApiCallResponse> call({
    String? isActive = 'false',
    String? roomId = '',
    String? type = 'delete_room',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'new Delete Chat room to databasew',
      apiUrl: 'https://100096.pythonanywhere.com/api/v2/room-service/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_active': isActive,
        'type': type,
        'room_id': roomId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic deletestatus(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class CreateRoomSalesAgentCall {
  static Future<ApiCallResponse> call({
    String? sessionId = '',
    String? subProduct = '',
  }) async {
    final ffApiRequestBody = '''
{
  "session_id": "${sessionId}",
  "sub_product": "${subProduct}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Room Sales Agent',
      apiUrl:
          'https://100096.pythonanywhere.com/create_room_sales_agent/sales-agent/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic deletestatus(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class DeleteConversationCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? sessionId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteConversation Copy Copy Copy',
      apiUrl:
          'https://100096.pythonanywhere.com/dowell-api/sender-delete-room/sales-agent/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'session_id': sessionId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic deletestatus(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class GetUserInfoByUserIdCall {
  static Future<ApiCallResponse> call({
    String? clientId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "${clientId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getUserInfoByUserId',
      apiUrl: 'https://100014.pythonanywhere.com/api/user_data/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
